create or replace PACKAGE BODY apx_utils AS

/**
 *  File         : apx_utils.pkb
 *  Description  : Package contains user authorization procedures specifically designed for APEX
 *  Change History
 *  Date          Version    Author               Description
 *  ----------    -------    ------               ------------


*/

g_coy_code  varchar2(3);

gc_coy_vhg   varchar2(3) := 'VPL';
gc_coy_bhg   varchar2(3) := 'BHG';

g_logout_url    varchar2(512);
gc_scope_prefix constant varchar2(31) := lower($$plsql_unit) || '.';

FUNCTION ite_yn(p_bool BOOLEAN)
  RETURN VARCHAR2 IS
BEGIN
  IF p_bool THEN
    RETURN 'Y';
  ELSE
    RETURN 'N';
  END IF;
END ite_yn;

-- Forward Declarations.
--
-- "prototypes"
procedure crm_privs;
procedure crm_item_Setup;
procedure crm_context_setup;
PROCEDURE cons_ut_setup;        -- SH 4.0 19/01/2018
procedure cons_setup_legacy;
PROCEDURE project_setup;     -- KM B65 13/09/2018

function app_is_active(p_app_id number) return varchar2;

PROCEDURE set_user_display IS
  lc_preferred_name  VARCHAR2(50);
  lr_user_master     user_master%ROWTYPE;
  lc_display         VARCHAR(150);
BEGIN

  /*lc_preferred_name := apx_util.get_preference
   (p_preference  => 'PREFERRED_NAME'
   ,p_username    => apex_application.g_user
   ,p_app_id      => null);*/

  << get_user >>
  BEGIN
    SELECT *
    INTO   lr_user_master
    FROM   user_master
    WHERE  login_id = apex_application.g_user
    AND    deactive_date IS NULL
    AND    ROWNUM = 1;

    -- scott (SCWE) wesleys
    lc_display := COALESCE(lc_preferred_name, INITCAP(lr_user_master.full_name))||' ('||lr_user_master.initials||') '||lr_user_master.login_id;

  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- not all users defined here
    -- scott - wesleys
    -- wesleys
    lc_display := RTRIM(lc_preferred_name||' - ',' - ')||lr_user_master.login_id;
  END get_user;

  logger.log('setting g_user_display:'||lc_display, p_scope => 'apx_utils.set_user_display');
  apex_util.set_session_state('G_USER_DISPLAY', NULLIF(lc_display, 'nobody'));
END set_user_display;

PROCEDURE post_authentication IS
  l_commit  BOOLEAN := TRUE;
  l_user    sec_users.login_id%type;
  	l_scope logger_logs.scope%type := gc_scope_prefix || 'post_authentication';
    l_params logger.tab_param;
BEGIN
  logger.log
    ('post_authentication:'||apex_application.g_instance||':'||apex_application.g_user,p_scope => l_scope);

  if apex_application.g_flow_id = 601 then
    logger.log('Harry - try to fetch user from email:'||v('APP_USER'),p_scope => l_scope);
    begin
    select login_id
    into l_user
    from sec_users
    where email_address = v('APP_USER');
    apex_custom_auth.set_user(p_user => l_user);
    exception when no_data_found then
      logger.log('oh dear, user not found. I wonder what will happen next?',p_scope => l_scope);
    end;

  else
    apex_custom_auth.set_user(p_user => upper(v('APP_USER')));
  end if;
  -- B68 https://community.oracle.com/message/15033462
  -- Ensure username is upper, so whatever supplied by Azure matches existing framework

  -- Ensure this is called when logging in or navigating to another application
  --B65 try without this on_new_instance;

  -- Define a nice display name
  set_user_display;

  logger.log('post-auth complete', p_scope => 'apx_utils.post_authentication');

END post_authentication;

FUNCTION is_authorized
  (p_authorization IN apex_plugin.t_authorization
  ,p_plugin        IN apex_plugin.t_plugin)
  RETURN apex_plugin.t_authorization_exec_result IS
-- Function checked within authorisation plug-in
-- Accepts role as parameter 1
-- Should only run once per session for efficiency
    l_role       VARCHAR2(30) := p_authorization.attribute_01;
    l_allocated  VARCHAR2(1);
    l_result     apex_plugin.t_authorization_exec_result;
BEGIN
  logger.log('Authorisation check for role "'||l_role||'"', p_scope => 'apx_utils.is_authorized', p_log_level => logger.g_sys_context);

  l_result.is_authorized := has_role(l_role);

  IF l_result.is_authorized THEN
    logger.log('Role "'||l_role||'" present', p_scope => 'apx_utils.is_authorized', p_log_level => logger.g_sys_context);
  END IF;

  RETURN l_result;
END is_authorized;

-- does the user have the specified role?
FUNCTION has_role
  (p_role VARCHAR2
  ,p_login_id varchar2 default apex_application.g_user -- SW 5/9/16
  ) RETURN BOOLEAN IS
  ln_count  NUMBER(1);
BEGIN
  SELECT COUNT(*)
  INTO ln_count
  FROM DUAL
  WHERE EXISTS
    (SELECT NULL
     --FROM apx_user_schemes
     --WHERE role_name = p_role
     FROM sec_authorisations_vw -- B6 now I'm suggesting we use *solely* sec_tables
     --from apx_authorisations
     WHERE role_name = p_role
     AND   grantee   = coalesce(p_login_id, apex_application.g_user, USER) --**** we could spoof other users by changing this.
     AND   category  = 'U_ROLE'
     --AND   src       = 'DB_ROLE' --*** what is actually granted, could be just on SEC_TABLES if we want,
     -- but apx_auth view needs modification for apx_page_auth over custom, not actual
    );

  RETURN ln_count = 1;
END has_role;

procedure get_user_default_office
  (p_login_id     in  sec_users.login_id%type
  ,p_div_code     out sec_user_Offices.div_code%type
  ,p_sales_office out sec_user_Offices.sales_Office%type
  ,p_user_default out sec_user_Offices.user_default%type
  ) is
begin
  select div_code, sales_Office, user_default
  into p_div_code, p_sales_office, p_user_default
  from sec_user_Offices
  where login_id = nvl(p_login_id, apex_application.g_user)
  order by user_default nulls last, div_code, sales_Office
  fetch first row only;
  logger.log('Defaults:'||p_div_code||'|'||p_sales_office||'|'||to_char(p_user_default,'yyyymmdd'), 'apx_utils.get_user_default_office');
end get_user_default_office;

procedure set_user_offices
  (p_app_id  number) is
  l_div_codes    VARCHAR2(200);
  l_brands       VARCHAR2(200);
	l_scope        logger_logs.scope%type := gc_scope_prefix || 'set_user_offices';
  l_params       logger.tab_param;
  l_dflt_div     sec_user_Offices.div_code%type;
  l_dflt_brand   sec_user_Offices.sales_Office%type;
  l_user_default sec_user_Offices.user_default%type;
begin
  logger.append_param(l_params, 'p_app_id', p_app_id);
  logger.log('START', l_scope, null, l_params);

  if apex_application.g_user = 'nobody' then
    -- not need to continue
    logger.log('user is nobody', l_scope);
    -- but need this for logout timout
    g_coy_code := get_coy;
    apex_util.set_session_state('F_COY_CODE', g_coy_code);
    apx_utils.set_parameter('ctx_vbs','coy_code', g_coy_code);
    return;
  end if;

  get_user_default_office
    (p_login_id     => apex_application.g_user
    ,p_div_code     => l_dflt_div
    ,p_sales_office => l_dflt_brand
    ,p_user_default => l_user_default
    );

  if l_user_default is not null then
    logger.log('using default set '||to_char(l_user_default,'yyyy mm dd'), l_scope);
  end if;

  -- for use eg:
  -- AND INSTR(SYS_CONTEXT('CTX_CONS','DIV_CODES'),':'||j.div_code||':') > 0
  -- same as:
  -- and instr(':H:S:',':'||div_code||':') > 0
  -- or single:
  -- and j.sales_office = sys_context('CTX_CRM','SALES_OFFICE')
  -- 19c will allow listagg(distinct div_code...
  select ':'||listagg(div_code,':') within group (order by null) ||':'
  into l_div_codes
  from (select distinct div_code from user_offices where login_id = apex_application.g_user);

  -- B68 order by sales office, ensure Aussie first
  select ':'||listagg(sales_office,':') within group (order by sales_office) ||':'
  into l_brands
  from (select distinct sales_office from user_offices where login_id = apex_application.g_user);

  logger.log('p_app_id - '||p_app_id,l_scope);
  logger.log('l_div_codes - '||l_div_codes,l_scope);
  logger.log('l_brands - '||l_brands,l_scope);


  if p_app_id in (102, 103, 109) then
    -- Projects, people, quotes
    apx_crm_utils.set_parameter('DIV_CODES',l_div_codes);
    apx_crm_utils.set_parameter('SALES_OFFICES', l_brands);
    apx_crm_utils.set_parameter('DIV_CODE', l_dflt_div);
    apx_crm_utils.set_parameter('SALES_OFFICE', l_dflt_brand);
    -- used for brand selection, and defining the menu icon since context can't be substituted
    apex_util.set_session_state('F_SALES_OFFICE', sys_contexT('CTX_CRM','SALES_OFFICE'));

  elsif p_app_id in (105, 305, 306) then

    -- construction
    apx_cons_util.set_parameter('DIV_CODES',l_div_codes);
    apx_cons_util.set_parameter('SALES_OFFICES',l_brands);
    apx_crm_utils.set_parameter('DIV_CODE', l_dflt_div);
    apx_crm_utils.set_parameter('SALES_OFFICE', l_dflt_brand);

    apex_util.set_session_state('P0_DIV_CODES',l_div_codes);
    apex_util.set_session_state('P0_SALES_OFFICES',l_brands);
  end if;
  /*if p_app_id = 102 then
    apex_util.set_session_state('P5_SALES_OFFICE', l_brands);
  end if;*/

EXCEPTION WHEN NO_DATA_FOUND THEN
  -- these users may not see all the records they need to?
  logger.log('No user offices found for user:'||apex_application.g_user, l_scope);
end set_user_offices;


procedure clear_app_context(p_user varchar2) is
begin
  logger.log('START', 'clear_app_context');
  << clear_orig_app_sec >>
  for r_rec in (
    select distinct app_id
    from sec_authorisations_vw  a
    where a.category = 'APP'
    and a.grantee = p_user
  ) loop
    -- nullify sec_fn for anything the original user had
    apx_utils.set_parameter('CTX_VBS','SEC_F'||r_rec.app_id, null);

  end loop clear_orig_app_sec;
end clear_app_context;

-- called on new instance
-- populate the relevant SEC_Fn variable with Y if the user has access
-- sys_context('CTX_VBS','SEC_F102')
-- I try to avoid loading sys_context is such a dynamic manner, but this seems to be a fair use. https://community.oracle.com/message/15116864
procedure populate_app_context is
  l_scope logger_logs.scope%type := gc_scope_prefix || 'populate_app_context';
  l_params logger.tab_param;
  l_cnt    pls_integer := 0;
  l_exists number;
  l_val    varchar2(1);
BEGIN
  logger.log('START', l_scope, null, l_params);

  for r_rec in (
    select app_id
    from sec_authorisations_vw  a
    where a.category = 'APP'
    and a.grantee = nvl(sys_context('CTX_VBS','BECOME_LOGIN_ID'), apex_application.g_user)
  ) loop
    apx_utils.set_parameter('CTX_VBS','SEC_F'||r_rec.app_id,'Y');
    l_cnt := l_cnt + 1;

  end loop;
  apx_utils.set_parameter('CTX_VBS','SEC_F101','Y'); -- everybody gets one
  logger.log('Created SEC_F for '||l_cnt||' applications', l_scope);

  -- reporting uses slightly different check because privilege can still by applied by page.
  select count(*)
  into   l_exists
  from   dual
  where exists (
    select null
    from apx_page_auth r, apx_authorizations c
    where r.role_name = c.role_name
    and   c.category = 'PAGE'
    and   c.grantee = apex_application.g_user
    and r.app_id IN 210
  );
  apx_utils.set_parameter('CTX_VBS','SEC_F210', case when l_exists = 1 then 'Y' end );

end populate_app_context;

-- I was running this logic in a few places
procedure set_item_if(
  p_priv_key sec_privileges.priv_key%type
 ,p_app_item varchar2
) is
  l_yn        VARCHAR2(1);
begin
  l_yn := ite_yn(apx_utils.user_has_privilege
     (p_login_id => apex_application.g_user
     ,p_priv_key => p_priv_key
    ));
    logger.log(p_app_item||':'||l_yn, 'apx_utils.set_item_if');
    apex_util.set_session_state(p_app_item, l_yn);
end set_item_if;

-- Instantiate application
PROCEDURE on_new_instance IS
/*
User has navigated to another application
This is the place to instantiate whatever is necessary.
Should be called from "On new instance" application process

Caution: if logging in directly to child app, this will conditionally not fire before authentication after landing on login page.
So there is also a call to this procedure from post-authentication.
B65 I'm not sure this is still the case, due to Azure authentication redirects.

Beware of setting application items here that don't exist in all applications that share this authorisation
*/
  l_itref        VARCHAR2(1); -- f_role_itref
  l_link_admin   VARCHAR2(1);
  l_scope logger_logs.scope%type := gc_scope_prefix || 'on_new_instance';
  l_params logger.tab_param;
  l_val    varchar2(1);
  l_app_id number;
BEGIN
  logger.append_param(l_params, 'g_user', apex_application.g_user);
  logger.append_param(l_params, 'g_flow_id', apex_application.g_flow_id);
  logger.log('START', l_scope, null, l_params);

  -- transform DBACCOUNTS into 101, treat them the same
  l_app_id := case when apex_application.g_flow_id = 9999 then 101 else apex_application.g_flow_id end ;
  logger.log('l_app_id:'||l_app_id, l_scope);

  crm_privs; -- 10/5/2016 make reference variables available to everywhere

  -- B74 set coy for all
  set_coy(get_coy);

  -- sec_f100 = Y if user has app access
  populate_app_context;

  -- This is more ubiquitous than just construction
  FOR r_rec IN
    (select null
     from apex_application_items
     where application_id = l_app_id
     and item_name = 'F_ROLE_ITREF')
  LOOP
    set_item_if('AAXY','F_ROLE_ITREF');
  END LOOP;
  -- B6 - Added F_ROLE_DEV
  FOR r_rec IN
    (select null
     from apex_application_items
     where application_id = l_app_id
     and item_name = 'F_ROLE_DEV')
  LOOP
    set_item_if('AAXX','F_ROLE_DEV');
  END LOOP;

  -- not all of these need running straight away
  -- and become complicates things a little.
  -- perhaps all should be executed if become someone

  -- I'd like to know before I first hit construction, so initial branches work correctly.
  IF l_app_id IN (101, 201, 105, 205) THEN -- Construction
    cons_setup_legacy;
  end if;

  IF l_app_id IN (305) THEN -- Construction UT
    cons_ut_setup;
  end if;

  IF l_app_id IN (104, 204) THEN -- Land management
    set_item_if('AAAV','F_ADMIN');
  end if;

  IF l_app_id in (102) THEN -- Quotes
    crm_context_setup;
    crm_item_setup;
  end if;
  IF l_app_id = 103 THEN -- People
    crm_context_setup;
  end if;
  IF l_app_id in (101, 109) THEN -- Projects
    project_setup;
  end if;

  IF l_app_id = 120 THEN -- Workflow
    -- no tasks yet
    null;
  end if;

  IF l_app_id IN (210) THEN -- Set Land Management in Reporting App
    set_item_if('AAAV','F_LAND_ADMIN');
  END IF;

  -- B35 calc_navbar_menu; -- SW 13/7/16 performance attempt
  logger.log('END on_new_instance', l_scope);
END on_new_instance;

-- Designed for general addenda pages
FUNCTION has_any_adde_role ( p_login_id  sec_users.login_id%type default apex_application.g_user
                           ) RETURN BOOLEAN IS
  ln_count  NUMBER(1);
BEGIN
  return sys_context('CTX_VBS','SEC_F108') = 'Y'; -- B65

--**** application scope - try verify function name?
  --calc_user_schemes;

  -- B6 it's fine to change logic table, but we need to ensure roles are reflected in tables
  -- prod seems better than dev? NO apx_authorisations != sec_authorisations
  -- select * from apx_admin.sec_role_privs r where granted_role = 'U_ADDE_MAINT'
  -- and not exists (select null from sec_authorisations_vw a where task = granted_role and a.grantee = r.login_id)
  -- and exists (select * from dba_users u where u.username = r.login_id and account_status = 'OPEN')


/* --*** B65 should be able to convert to normal, or use sec_f108
  SELECT COUNT(*)
  INTO ln_count
  FROM DUAL
  WHERE EXISTS
    (SELECT NULL
     FROM sec_authorisations_vw -- B6 logic tables should be sufficient
     WHERE role_name IN ('U_ADDE', 'U_ADDE_MGT', 'U_ADDE_MAINT', 'U_ITREF')
     AND   grantee   = p_login_id
     AND   category  = 'U_ROLE'
    );

  RETURN ln_count = 1;*/
  -- Condition returning boolean:
  -- return apx_utils.has_any_adde_role;
  --RETURN 'Y' IN (v('F_USR_ADDE'), v('F_USR_ADDE_MGT'), v('F_USR_ADDE_MAINT')
  --              ,v('F_USR_ITADMIN')
  --              );
END has_any_adde_role;

-- source of truth for privilege keys in crm
-- referenced in reports as well.
procedure crm_privs is
begin
  logger.log('Define PRIV_contexts', gc_scope_prefix||'crm_privs', p_log_level => logger.g_apex);
  apx_crm_utils.set_parameter('PRIV_DATA_LIST','AAAH');
  apx_crm_utils.set_parameter('PRIV_SALES_REP','AAAC');
  apx_crm_utils.set_parameter('PRIV_FACILITATOR','AAAG');
  apx_crm_utils.set_parameter('PRIV_SALES_QUAL','AAKX');
  apx_crm_utils.set_parameter('PRIV_SALES_HASS','ABRA'); -- B49
  apx_crm_utils.set_parameter('PRIV_SALES_PASS','ABRU'); -- (future)
  apx_crm_utils.set_parameter('PRIV_VIEWER','AAAB');
  apx_crm_utils.set_parameter('PRIV_MANAGE_CAMP','AAH4');
  apx_crm_utils.set_parameter('PRIV_CAMP_CALLER','AAH5');
  apx_crm_utils.set_parameter('PRIV_SALES_MANAGER','AAL1');
end crm_privs;

PROCEDURE crm_context_setup IS
  l_exists       NUMBER;
  l_mgr          sec_users.initials%type;
  l_scope logger_logs.scope%type := gc_scope_prefix || 'crm_context_setup';
  l_params logger.tab_param;
BEGIN
  logger.append_param(l_params, 'user', apex_application.g_user);
  logger.log('START', l_scope, null, l_params);
  -- These will store key code, referred to using
  -- SYS_CONTEXT('CTX_CRM','PRIV_SALES_REP')
  -- defined on new instance 10/5/16 crm_privs;

  -- This will return the code value if they're a member.
  -- SYS_CONTEXT('CTX_CRM','SEC_SALES_REP')

  IF user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => SYS_CONTEXT('CTX_CRM','PRIV_FACILITATOR') -- facilitator
  ) then
    apx_crm_utils.set_parameter('SEC_FACILITATOR', SYS_CONTEXT('CTX_CRM','PRIV_FACILITATOR'));

  end if;

  IF user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => SYS_CONTEXT('CTX_CRM','PRIV_SALES_MANAGER')
  ) then

    begin
    /*select mgr_id
    into   l_mgr
    from   managers
    where  mgr_code = (select initials from sec_users where login_id = apex_application.g_user);*/

    select initials
    into   l_mgr
    from sec_users
    where login_id = apex_application.g_user;

    apx_crm_utils.set_parameter('SALES_MANAGER', l_mgr);--SYS_CONTEXT('CTX_CRM','PRIV_SALES_MANAGER'));
    exception when no_data_found then
      apx_crm_utils.set_parameter('SALES_MANAGER', null);

    end;
  else -- clear anything (unbecome)
    apx_crm_utils.set_parameter('SALES_MANAGER', null);

  end if;

  IF user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => SYS_CONTEXT('CTX_CRM','PRIV_SALES_REP') -- sales rep
  ) then
    -- only if rep, facilitators will need to do this manually from 102:70
    apx_crm_utils.set_parameter('SALES_REP', apex_application.g_user);
    apx_crm_utils.set_parameter('SEC_SALES_REP',SYS_CONTEXT('CTX_CRM','PRIV_SALES_REP'));
  else -- ensure become clears if switching responsibility
    apx_crm_utils.set_parameter('SALES_REP', null);
    apx_crm_utils.set_parameter('SEC_SALES_REP', null);
  END IF;
  IF user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => SYS_CONTEXT('CTX_CRM','PRIV_SALES_QUAL') -- sales qualifier
  ) then
    -- only if qual, facilitators will need to do this manually from 102:70
    apx_crm_utils.set_parameter('SALES_QUAL', apex_application.g_user);
    apx_crm_utils.set_parameter('SEC_SALES_QUAL',SYS_CONTEXT('CTX_CRM','PRIV_SALES_QUAL'));
  else
    apx_crm_utils.set_parameter('SALES_QUAL', null);
    apx_crm_utils.set_parameter('SEC_SALES_QUAL', null);
  END IF;
  -- B49
  IF user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => SYS_CONTEXT('CTX_CRM','PRIV_SALES_HASS') -- home information assistant
  ) then
    apx_crm_utils.set_parameter('SALES_HASS', apex_application.g_user);
    apx_crm_utils.set_parameter('SEC_SALES_HASS',SYS_CONTEXT('CTX_CRM','PRIV_SALES_HASS'));
  else
    apx_crm_utils.set_parameter('SALES_HASS', null);
    apx_crm_utils.set_parameter('SEC_SALES_HASS', null);
  END IF;

  -- unless you're one of those display people (Sharon Bergam)
  IF user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => 'AA57' -- Leads - New Display
  ) then
    apx_crm_utils.set_parameter('SALES_REP', apex_application.g_user);
    apx_crm_utils.set_parameter('SEC_SALES_REP',SYS_CONTEXT('CTX_CRM','PRIV_SALES_REP'));
  END IF;

  apx_crm_utils.set_parameter('SELECTED_REP', coalesce(sys_context('CTX_CRM','SALES_REP'),sys_context('CTX_CRM','SALES_QUAL'),SYS_CONTEXT('CTX_CRM','SALES_HASS')));
  apex_util.set_session_state('P0_SELECTED_REP', sys_contexT('CTX_CRM','SELECTED_REP'));

  select count(*)
  into l_exists
  from dual
  where exists
   (--select null from sales_reps where login_id = apex_application.g_user
    select null from sec_authorisations_vw
    where priv_key = coalesce(sys_context('CTX_CRM','PRIV_DATA_LIST'), 'AAAH')
    and  grantee = apex_application.g_user
   );

  IF l_exists = 0 then
  -- only set in context if actual rep, not for us peeps
    logger.log('not rep, so clear initial context', l_scope);

    apx_crm_utils.set_parameter('SALES_QUAL', null);
    apx_crm_utils.set_parameter('SALES_REP' , null);
    apx_crm_utils.set_parameter('SALES_HASS', null); -- B49
    apx_crm_utils.set_parameter('SALES_PASS', null);
  end if;

  set_user_offices(apex_application.g_flow_id);


  logger.log('END crm_context_setup', l_scope);
END crm_context_setup;

PROCEDURE crm_item_setup IS
  l_exists       NUMBER;
  l_mgr          sec_users.initials%type;
  l_scope logger_logs.scope%type := gc_scope_prefix || 'crm_item_setup';
  l_params logger.tab_param;
BEGIN
  logger.append_param(l_params, 'user', apex_application.g_user);
  logger.log('START', l_scope, null, l_params);


  -- for quote status column headers
  apx_crm_utils.set_status_descriptions;

  logger.log('END crm_item_setup', l_scope);
END crm_item_setup;


/*
  Function:  cons_ut_setup
  Purpose:   Procedure to determine privilege details for the upgraded Construction app.
             New procedure created to not affect the running of the existing Construction application.

  Change History
  Date          Version    Author               Description
  ----------    -------    ------               ------------
  19/01/2017    1.0        SHughes (SAGE)       Initial Version.
  23/01/2020    1.1        HARRISE (SAGE)       General Sec changes
*/
PROCEDURE cons_ut_setup IS
  l_scope  logger_logs.scope%type := gc_scope_prefix || 'cons_ut_setup';
  l_params logger.tab_param;


  l_sec_user_rec     sec_users%ROWTYPE;
  -- private methods
  --

  procedure set_user_types
  is
    l_user_types varchar2(200);
    l_scope  logger_logs.scope%type := gc_scope_prefix || 'set_user_types';
  begin
    logger.log('START', l_scope);

    select
      listagg(ur.user_type,':')  user_types
    into l_user_types
    from sec_users u
    join sec_user_roles ur
      on u.login_id = ur.login_id
    where u.deactive_date is null
    and ur.deactive_date is null
    and u.login_id = apex_application.g_user
    group by u.login_id;

    apex_util.set_session_state( p_name => 'P0_USER_TYPES'
                                ,p_value => l_user_types);

    logger.log('END', l_scope);
  end set_user_types;

-- cons_ut_setup - start
BEGIN
  logger.log('START', l_scope);
  -- cons_setup_legacy;
  apx_cons_util.set_parameter('PRIV_CONS_MGR','AB1M'); -- by virtue of main super list?
  apx_cons_util.set_parameter('PRIV_CONS_CL','AB2U');
  apx_cons_util.set_parameter('PRIV_STARTS_SUPER','AB1O');
  apx_cons_util.set_parameter('PRIV_MAIN_SUPER','ABBU');

  apx_cons_util_ut.clear_all_context;

  set_user_types;

  logger.log('set_user_offices', l_scope);
  set_user_offices(apex_application.g_flow_id);

  -- Construction manager (group, cons or ass)
  if user_has_privilege
        (p_login_id => apex_application.g_user
        ,p_priv_key => SYS_CONTEXT('CTX_CONS','PRIV_CONS_MGR')  ) then
    logger.log('Constr Mgr Setup', l_scope);
    apx_cons_util.set_parameter('SEC_CONS_MGR', SYS_CONTEXT('CTX_CONS','PRIV_CONS_MGR'));

  -- Admin manager (brand, admin et al)
  elsif (1 = 2) then
    logger.log('Admin Mgr Setup', l_scope);

  -- CL
  elsif user_has_privilege
          (p_login_id => apex_application.g_user
          ,p_priv_key => SYS_CONTEXT('CTX_CONS','PRIV_CONS_CL')  ) then

    logger.log('Client Liaison Setup', l_scope);
    apx_cons_util.set_parameter('SEC_CONS_CL', SYS_CONTEXT('CTX_CONS','PRIV_CONS_CL'));

    apx_cons_util_ut.set_liaison_context(p_login_id => apex_application.g_user);

  -- -- STARTS SUPER
  -- elsif user_has_privilege
  --         (p_login_id => apex_application.g_user
  --         ,p_priv_key => SYS_CONTEXT('CTX_CONS','PRIV_STARTS_SUPER')  ) then

  --   apx_cons_util.set_parameter('SEC_STARTS_SUPER', SYS_CONTEXT('CTX_CONS','PRIV_STARTS_SUPER'));
  --   set_initials;

  -- MAIN_SUPER
  -- elsif user_has_privilege
  --         (p_login_id => apex_application.g_user
  --         ,p_priv_key => SYS_CONTEXT('CTX_CONS','PRIV_MAIN_SUPER')  ) then

  elsif instr(v('P0_USER_TYPES'),'SU') > 0  then
    logger.log('Supervisor Setup', l_scope);
    apx_cons_util.set_parameter('SEC_MAIN_SUPER', SYS_CONTEXT('CTX_CONS','PRIV_MAIN_SUPER'));

    l_sec_user_rec := get_sec_user( p_login_id => apex_application.g_user);

    --SW oct2020: why are we using initials here?
    apx_cons_util_ut.set_supervisor_context(p_supervisor => l_sec_user_rec.login_id);

    -- apx_cons_util_ut.set_brand_context;

  -- MAINT
  elsif (1 = 1) then --TOOD(EH)
    logger.log('Maintenance Setup', l_scope);
  end if ;

  logger.log('END', l_scope);

END cons_ut_setup;


-- Determine specific privilege information for construction application
PROCEDURE cons_setup_legacy IS
  l_initials     user_master.initials%TYPE;
  -- Current application item mappings --*** search/replace at some point to make consistent? f_role_group, f_role_brand etc?
  l_group_super  VARCHAR2(1); -- f_role_mgt
  l_brand_super  VARCHAR2(1); -- f_role_brand
  l_brand_mgr    VARCHAR2(1); -- f_role_brand_mgr
  l_start_super  VARCHAR2(1); -- f_role_start
  l_main_super   VARCHAR2(1); -- f_role_super
  l_cons_maint   VARCHAR2(1); -- f_cons_maint
  l_cons_cl      VARCHAR2(1); -- f_role_cl
  l_cons_cl_mgr  VARCHAR2(1); -- f_role_cl_mgr
  l_nomination   VARCHAR2(1); -- f_role_nomination
  l_scope logger_logs.scope%type := gc_scope_prefix || 'cons_setup_legacy';
  l_params logger.tab_param;
BEGIN
  logger.log('Determine construction roles (105)', l_scope);

  IF APEX_AUTHENTICATION.IS_AUTHENTICATED THEN -- only bother if authenticated
  -- AND v('F_ROLE_MGT') IS NULL         -- and not done already (done in application process condition

    -- Role based privilege
    l_group_super := ite_yn(has_role('U_GROUP_SUPER'));
    l_brand_super := ite_yn(has_role('U_BRAND_SUPER'));
    l_brand_mgr   := ite_yn(has_role('U_BRAND_MGR'));
    l_start_super := ite_yn(has_role('U_START_SUPER'));
    l_main_super  := ite_yn(has_role('U_MAIN_SUPER'));
    --l_itref       := ite_yn(has_role('U_ITREF'));
    l_cons_cl     := ite_yn(has_role('U_CONS_CL'));
    l_cons_cl_mgr := ite_yn(has_role('U_CONS_CL_MGR'));
    l_cons_maint  := ite_yn(has_role('U_CONS_MAINT'));
    l_nomination  := ite_yn(has_role('U_NOMINATION'));

    -- Apply to application items to make conditional components easier to construct
    --*** currently relevant authorisation schemes created
    logger.log('F_ROLE_MGT:'||l_group_super, l_scope);
    apex_util.set_session_state('F_ROLE_GROUP', l_group_super);

    logger.log('F_ROLE_BRAND:'||l_brand_super, l_scope);
    apex_util.set_session_state('F_ROLE_BRAND', l_brand_super);

    logger.log('F_ROLE_BRAND_MGR:'||l_brand_mgr, l_scope);
    apex_util.set_session_state('F_ROLE_BRAND_MGR', l_brand_mgr);

    logger.log('F_ROLE_START:'||l_start_super, l_scope);
    apex_util.set_session_state('F_ROLE_START', l_start_super);

    logger.log('F_ROLE_SUPER:'||l_main_super, l_scope);
    apex_util.set_session_state('F_ROLE_SUPER', l_main_super);

    --logger.log('F_ROLE_ITREF:'||l_itref, l_scope);
    --apex_util.set_session_state('F_ROLE_ITREF', l_itref);

    logger.log('F_ROLE_CONS_MAINT:'||l_cons_maint, l_scope);
    apex_util.set_session_state('F_ROLE_CONS_MAINT', l_cons_maint);

    logger.log('F_ROLE_CL:'||l_cons_cl, l_scope);
    apex_util.set_session_state('F_ROLE_CL', l_cons_cl);

    logger.log('F_ROLE_CL_MGR:'||l_cons_cl_mgr, l_scope);
    apex_util.set_session_state('F_ROLE_CL_MGR', l_cons_cl_mgr);

    logger.log('F_NOMINATION:'||l_nomination, l_scope);
    apex_util.set_session_state('F_ROLE_NOMINATION', l_nomination);

--*** use supervisor or user_master table? "supervisor discrepancies"
    IF 'Y' IN (l_start_super, l_main_super, l_cons_cl) THEN
      << initials >>
      BEGIN
        SELECT initials
        INTO   l_initials
        FROM   user_master
        WHERE  login_id = apex_application.g_user
        AND    deactive_date is null
        ;

        -- set supervisor context for supervisors.
        IF 'Y' IN (l_start_super, l_main_super) THEN
          apx_cons_util.set_parameter('SUPERVISOR',l_initials);
        ELSIF l_cons_cl = 'Y' THEN
          apx_cons_util.set_parameter('LIAISON',l_initials);
        END IF;

      EXCEPTION WHEN NO_DATA_FOUND THEN
        logger.log('Initials not found for user:'||apex_application.g_user, l_scope);
        null;
      WHEN TOO_MANY_ROWS THEN
        logger.log('Too many records found for user:'||apex_application.g_user, l_scope);
      END initials;
    END IF;

    set_user_offices(apex_application.g_flow_id);

  ELSE
    logger.log('User not authenticated', l_scope);
  END IF;
  logger.log('END cons_setup_legacy', l_scope);

END cons_setup_legacy;

PROCEDURE project_setup IS
  l_scope logger_logs.scope%type := gc_scope_prefix || 'project_setup';
  l_params logger.tab_param;
BEGIN
  logger.log('START', l_scope, null, l_params);

  set_user_offices(apex_application.g_flow_id);

  logger.log('END project_setup', l_scope);
END project_setup;

-- Designed for initial reporting access
FUNCTION add_maint_or_itadmin RETURN BOOLEAN IS
  -- return apx_utils.add_maint_or_itadmin;
  ln_count  NUMBER(1);
BEGIN
  -- B6 use custom tables
  return user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => 'AACV' -- U_ADDE_MAINT
      ,p_priv_key_2 => 'AAXY' -- demo
      );
END add_maint_or_itadmin;

-- Designed for special features like user list
FUNCTION add_mgr_or_itadmin RETURN BOOLEAN IS
  -- return apx_utils.add_mgr_or_itadmin;
  ln_count  NUMBER(1);
BEGIN
  -- B6 use custom tables
  return user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => 'AACP' -- U_ADDE_MGT
      ,p_priv_key_2 => 'AAXY' -- demo
      );
END add_mgr_or_itadmin;

-- Will prevent navigation to addenda page in association with application process
FUNCTION protect_addenda_pages
  (p_app_id       NUMBER
  ,p_app_page_id  NUMBER)
  RETURN BOOLEAN IS
  l_dummy  PLS_INTEGER;
BEGIN
  -- If they don't belong in the Addenda
  IF NOT apx_utils.has_any_adde_role
  AND v('APP_USER') <> 'IANH' THEN
    << check_addenda_page >>
    BEGIN
      -- And they're trying to access an addenda page
      SELECT null
      INTO   l_dummy
      FROM   apex_application_pages
      WHERE 1=1
      -- B68 why? and    page_group     = 'Addenda' -- An addenda related page
      -- B68 no longer excluded AND    page_alias    != 'HOME' -- Allow home page
      -- SW 2020-12-23 this whole procedure no longer looks functional, or is now superfluous to protections that now exist for all apps
      AND    application_id = p_app_id
      AND    page_id        = p_app_page_id;

      logger.log('User should not navigate to Addenda page', p_scope => 'apx_utils.protect_addenda_pages');

      -- Don't let them!
      -- TRUE means they shouldn't be here, so redirect!
      RETURN TRUE;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      logger.log('User not navigating to addenda page', p_scope => 'apx_utils.protect_addenda_pages', p_log_level => logger.g_apex);
      RETURN FALSE;
    END check_addenda_page;
  ELSE
    logger.log('User has role for Addenda pages', p_scope => 'apx_utils.protect_addenda_pages', p_log_level => logger.g_apex);
    RETURN FALSE;
  END IF;
END protect_addenda_pages;


-- EH -- I believe this function can be removed as it is now handled via an authorisation scheme and app item
-- Can the user maintain stuff like callup master in construction
-- SW B65 still used in 2 places in f205, so changed check method
FUNCTION cons_maint RETURN BOOLEAN IS
BEGIN
  return apx_utils.user_has_privilege
   (p_login_id => apex_application.g_user
   ,p_priv_key => 'AAXY' -- demo
   ,p_priv_key_2 => 'AAC1' -- group super
  );
END cons_maint;

PROCEDURE add_roles_to_pages
  (p_role_list    VARCHAR2
  ,p_page_list    VARCHAR2
  ,p_app_id       NUMBER
  ,p_delimiter    VARCHAR2 DEFAULT ',')
  IS
  -- exec apx_utils.add_roles_to_pages('U_ITREF','52',105)
BEGIN
  INSERT INTO apx_page_auth (role_name,app_id,page_id)
  WITH roles as (select column_value rname from table(string_to_sql_table(p_role_list, p_delimiter)))
      ,pages as (select p_app_id app_id, column_value page_id from table(string_to_sql_table(p_page_list, p_delimiter)))
  SELECT rname, app_id,  page_id
  from   roles, pages
  WHERE NOT EXISTS
    (select null from apx_page_auth
     where app_id    = pages.app_id
     and   page_id   = pages.page_id
     and   role_name = roles.rname
    )
  order by rname, page_id;
  dbms_output.put_line(SQL%ROWCOUNT||' records inserted');
END add_roles_to_pages;

PROCEDURE remove_role_from_page
  (p_role_name    VARCHAR2
  ,p_page_id      NUMBER
  ,p_app_id       NUMBER
  ) IS
BEGIN
  DELETE apx_page_auth
  WHERE  app_id    = p_app_id
  AND    page_id   = p_page_id
  AND    role_name = p_role_name;
  dbms_output.put_line(SQL%ROWCOUNT||' records deleted');
END remove_role_from_page;

PROCEDURE remove_page_auth
  (p_page_id      NUMBER
  ,p_app_id       NUMBER
  ) IS
-- exec apx_utils.remove_page_auth(32, 105)
BEGIN
  DELETE apx_page_auth
  WHERE  app_id    = p_app_id
  AND    page_id   = p_page_id;
  dbms_output.put_line(SQL%ROWCOUNT||' records deleted');
END remove_page_auth;

-- Commandeered from eba_cust_fw package (packaged application)
-- converts sequence into 4 char string (that can grow)
function compress_int
  (n in integer )
  return varchar2 deterministic
as
 ret        varchar2(30);
 quotient   integer;
 l_remainder  integer;
 digit      char(1);
begin
  ret := '';
  quotient := n;
  while quotient > 0
  loop
      l_remainder := mod(quotient, 10 + 26);
      quotient := floor(quotient  / (10 + 26));
      if l_remainder < 26 then
          digit := chr(ascii('A') + l_remainder);
      else
          digit := chr(ascii('0') + l_remainder - 26);
      end if;
      ret := digit || ret;
  end loop ;
  if length(ret) < 5 then
      ret := lpad(ret, 4, 'A');
  end if ;
  return upper(ret);
end compress_int;

FUNCTION user_has_privilege
  (p_login_id   user_master.login_id%TYPE
  ,p_priv_key   apx_privileges.priv_key%TYPE
  ,p_priv_key_2 apx_privileges.priv_key%TYPE DEFAULT NULL
  ,p_priv_key_3 apx_privileges.priv_key%TYPE DEFAULT NULL
  ,p_fast       boolean default false -- B6
) RETURN BOOLEAN IS
  l_exists  PLS_INTEGER;
BEGIN
  -- if only logic tables need to be tested, not physical roles
  -- I know the syntax is superfluous, but I just have to have this line
  if p_fast = true then
    -- B65 make it even faster if they've only supplied the one priv
    if p_priv_key is not null
    and p_priv_key_2 is null
    and p_priv_key_3 is null then
      SELECT count(*)
      into l_exists
      FROM dual
      WHERE EXISTS
        (select null
        from sec_authorisations_vw
        where grantee  = p_login_id
        and   priv_key = p_priv_key);
    else
      SELECT count(*)
      into l_exists
      FROM dual
      WHERE EXISTS
        (select null
        from sec_authorisations_vw
        where grantee  = p_login_id
        and  (priv_key = p_priv_key
            OR priv_key = p_priv_key_2
            OR priv_key = p_priv_key_3
            )
        );
    end if;
  else
    SELECT count(*)
    into l_exists
    FROM dual
    WHERE EXISTS
      (select null
       from apx_authorizations
       where grantee  = p_login_id
       and  (priv_key = p_priv_key
          OR priv_key = p_priv_key_2
          OR priv_key = p_priv_key_3
          )
       );
  end if;
  logger.log(p_login_id||':'||p_priv_key||':'||l_exists, p_scope => 'apx_utils.user_has_privilege', p_log_level => logger.g_sys_context);
  RETURN l_exists = 1;
END user_has_privilege;

FUNCTION user_has_privilege_sql
  (p_login_id   user_master.login_id%TYPE
  ,p_priv_key   apx_privileges.priv_key%TYPE)
  RETURN PLS_INTEGER is -- return 1 if true, so can be used in SQL
begin
  return case when ite_yn(user_has_privilege (p_login_id => p_login_id
                                             ,p_priv_key => p_priv_key
                                             ,p_fast => true -- B6 I think we can safely assume logic tables
                                             )) = 'Y'
         then 1
         end;
end user_has_privilege_sql;

FUNCTION privilege_authorized
  (p_authorization IN apex_plugin.t_authorization
  ,p_plugin        IN apex_plugin.t_plugin)
  RETURN apex_plugin.t_authorization_exec_result IS
-- Function checked within authorisation plug-in
-- Accepts apx_privileges priv_key as parameter 1
-- Should only run once per session for efficiency
    l_priv_key   VARCHAR2(30) := p_authorization.attribute_01;
    l_result     apex_plugin.t_authorization_exec_result;
BEGIN
  l_result.is_authorized := user_has_privilege
      (p_login_id => apex_application.g_user
      ,p_priv_key => UPPER(l_priv_key)
      ,p_fast     => true -- B6 physical roles are supplementary
      );

  if l_result.is_authorized then
    logger.log('privilege "'||l_priv_key||'" present', p_scope => 'apx_utils.privilege_authorized', p_log_level => logger.g_sys_context);
  else
    logger.log('privilege "'||l_priv_key||'" absent', p_scope => 'apx_utils.privilege_authorized', p_log_level => logger.g_sys_context);
  end if;

  RETURN l_result;
END privilege_authorized;

FUNCTION has_app_access_sql
  (p_login_id  user_master.login_id%TYPE
  ,p_app_id    apex_applications.application_id%TYPE)
RETURN PLS_INTEGER IS -- return 1 if true, so can be used in SQL
BEGIN
  RETURN CASE WHEN has_app_access(p_login_id, p_app_id => p_app_id) THEN 1 END;
END has_app_access_sql;

-- overloaded, passing alias instead of app_id
FUNCTION has_app_access
  (p_login_id  user_master.login_id%TYPE
  ,p_alias     apex_applications.alias%TYPE)
RETURN BOOLEAN IS
  l_app_id  number;
BEGIN
  select application_id
  into l_app_id
  from apx_applications
  where alias = p_alias;

  return apx_utils.has_app_access(p_login_id, p_app_id => l_app_id);
exception when no_data_found then
  return false;
END has_app_access;


-- At some point I would like to modify this to rely on specific privileges that define access to a particular app.
FUNCTION has_app_access
  (p_login_id  user_master.login_id%TYPE
  ,p_app_id    apex_applications.application_id%TYPE)
RETURN BOOLEAN IS
  l_exists  PLS_INTEGER := 0; -- primed to false
BEGIN
  logger.log('has_app_access:'||p_login_id||':'||p_app_id, p_scope => 'apx_utils.has_app_access', p_log_level => logger.g_sys_context);

  -- EXCEPTIONS

  -- these applications are not yet available in prod
  -- should be removed for B65
  /*if not vbs_util.not_prod
  and p_app_id in (109,120) then
    return false;
  end if;*/

  /*if p_app_id = 201 and sys_context('CTX_VBS','ORIG_LOGIN_ID') is not null then
    return true;
  end if;*/

  -- Any phased brand access may need to be done within the app, especially if it's just particular components within the app (ABIE)

  -- B65 Instead of checking relevant privilege each time, I could populate context
  logger.log('SEC_F'||p_app_id || ' = Y = '||sys_context('CTX_VBS','SEC_F'||p_app_id), p_scope => 'apx_utils.has_app_access', p_log_level => logger.g_sys_context);
  return sys_context('CTX_VBS','SEC_F'||p_app_id) = 'Y';
  -- the trouble with this solution is that it doesn't account for exceptions, such as branded release
  -- perhaps exceptions should go above this statement?

END has_app_access;

function env_title return varchar2 is
begin
  return case lower(sys_context('userenv','db_name'))
   when 'vhgdev' then '(Gemini - VHG)'
   when 'bhgdev' then '(Gemini - BGC HG)'
   when 'dev' then '(Dev)'
   when 'dev1' then '(Dev1)'
   when 'dev2' then '(Dev2)'
   when 'dev3' then '(Dev3)'
   when 'uat' then '(UAT)'
   when 'test' then '(Test)'
  end;
end env_title;

procedure env_branding is
-- I would like to add this to com_app_parameters.
 l_env     varchar2(50);
 l_colour  varchar2(20);
begin
  begin
    l_env := upper(sys_context('userenv','db_name'));
    -- server_host probably a better option in future - points to relevant database host name.
  exception when value_error then
    raise_application_Error(-20001, 'DB name too big for variable: '||sys_context('userenv','db_name'));
  end;
  l_colour := pk_utility.get_app_parameter(l_env, 'ENV_BRANDING');

  -- Old apps not yet using UT
  if apex_application.g_flow_id in (104,105,205,108,110) then
    -- older applications
    if l_env like 'DEV%' then
      htp.style('div.navbar-inner {background-image: linear-gradient(to bottom,#effbe5,#effbe5) !important;}');

    elsif l_env = 'TEST' then
      htp.style('div.navbar-inner {background-image: linear-gradient(to bottom,#FBEEE5,#FBEEE5) !important;}');

    elsif l_env = 'UAT' then
      htp.style('div.navbar-inner {background-image: linear-gradient(to bottom,#5205ce,#5205ce) !important;}');

    --elsif l_env = 'VBSPROD' then
      --htp.style('div.navbar-inner {background-image: linear-gradient(to bottom,#d9e3ea,#d7eeff) !important;}');

    end if;

  -- All UT applications.
  else -- all new apps
    htp.style('.t-Header-branding {background-color:'||l_colour||';}');

    if  l_env like '%DEV%' then
      -- DEV2 As at 2017, the 5.1 environment
      -- VBSPROD Jan 2019, the dev cloud
      htp.style('.dev-only {font-style:italic;}');
    else
      -- anything with this class should/will not appear in prod
      htp.style('.dev-only {display:none;}');
    end if;

  end if; -- app
end env_branding;

/* Intention here was to set up a common place to store details of the entity currently selected.
This would be paired with a f101 page that serves as the launchpad for related information.
Was too early for it's day.

CREATE OR REPLACE CONTEXT ctx_est USING apx_utils  ACCESSED GLOBALLY
CREATE OR REPLACE CONTEXT ctx_vbs USING apx_utils  ACCESSED GLOBALLY

Already exists, set in own packages:
ctx_crm and ctx_cons
*/

procedure set_base_id
  (p_id    varchar2
  ,p_alias varchar2 default apex_application.g_flow_alias
  ,p_label varchar2 default null
  ) is
begin
  -- context name needs parameterising
  logger.log('set_base_id:'||p_id||' ('||p_alias||')', p_scope => 'apx_utils.set_base_id', p_log_level => logger.g_sys_context);
  apx_utils.set_parameter('ctx_vbs','source_id', p_id);
  apx_utils.set_parameter('ctx_vbs','source_alias', p_alias);
  apx_utils.set_parameter('ctx_vbs','source_label', p_label);

  /* collections are app specific :(
  IF NOT APEX_COLLECTION.COLLECTION_EXISTS('CONTEXT_HISTORY') THEN
    apex_collection.create_collection('CONTEXT_HISTORY');
  END IF;

  apex_collection.add_member('CONTEXT_HISTORY', p_id, p_alias, p_d001 => sysdate);*/
end set_base_id;

-- Method to store global variables instead of app subst strings or application items across apps.
PROCEDURE set_parameter
  (p_context    varchar2
  ,p_attribute  VARCHAR2
  ,p_value      VARCHAR2
  ) IS
BEGIN
  logger.log('Set '||p_context||':'||p_attribute||'='||p_value, p_scope => 'apx_utils.set_parameter',  p_log_level => logger.g_sys_context);
  DBMS_SESSION.set_context
    (namespace => p_context
    ,attribute => p_attribute
    ,value     => p_value
    ,client_id => SYS_CONTEXT('USERENV','CLIENT_IDENTIFIER'));

-- http://jeffkemponoracle.com/2013/02/28/apex-and-application-contexts/

/* Obtain value using eg:

-- set in pl/sql
apx_utils.set_parameter('CTX_EST','PRIV_BLAH','Y')

-- expression
sys_context('CTX_EST','CONPROF_ID')

-- select statement
job_no = sys_context('CTX_CONS','JOB_NO')

-- setup session for use in sql developer
exec apx_utils.set_parameter('CTX_EST','PRIV_BLAH','Y')
*/

END set_parameter;

-- to be called on load for each application, currently via process
-- - clean way to help suspend activity on 102 during upgrade
-- - allows instant deactivate user
-- - page level security, particularly for reports
procedure verify_function is
  l_exists  pls_integer;
  l_url     varchar2(2000);
  l_msg     varchar2(2000);
  l_scope logger_logs.scope%type := gc_scope_prefix || 'verify_function';
  l_params logger.tab_param;
begin
  logger.log('verify function:'||v('APP_USER')||';'||v('APP_ID')||';'||v('REQUEST'), p_scope => l_scope, p_log_level => logger.g_sys_context);

  -- important, stops infinite redirects
  if v('APP_PAGE_ID') = 101
  or v('REQUEST') = 'STOP'
  then
    return;
  end if;

  -- first check if user is valid
  select count(*)
  into l_exists
  from dual
  where exists -- Active user must be present
    (select null
     from sec_users
     where login_id = apex_application.g_user
     and deactive_date is null);
  -- SW HF 2019-4-2 Previously, it was not possible to authenticate without a record existing, by virtue of the process
  -- Now we can have successful azure authentication, but we need to ensure valid user exists

  if l_exists = 0 then
    logger.log('user not active', l_scope);
    l_url := APEX_UTIL.PREPARE_URL('f?p=BUILDX:101:0:DEACTIVE:NO:APP:');
  end if;

  -- INSTALLATION BOLT - remove after install of 101,201 completed.
  --apex_util.redirect_url('f?p=BUILDX:101:0:PAUSE:NO:APP:', false);

  if apex_application.g_flow_id != 101 then
    -- if in a different app to menu, check if this app is stil available
    -- ie - not suspended while being upgrade
    l_msg := app_is_active(apex_application.g_flow_id);
    if l_msg is not null then
      logger.log('app not active:'||apex_application.g_flow_id, l_scope);
      l_url := APEX_UTIL.PREPARE_URL('f?p=BUILDX:1:'||v('SESSION')||':APP_SUSPENDED');--STOP:::P1_APP_MAINT,P1_APP_MSG:'||apex_application.g_flow_id||','||l_msg);
    end if;
  end if;

  -- SW 20180103 allow 101 to be suspended, which disables main menu.
  if apex_application.g_flow_id != 101 then
    -- don't test/redirect if already in 101
    l_msg := app_is_active(101);
    if l_msg is not null then
      logger.log('master app 101 suspended', l_scope);
      l_url := APEX_UTIL.PREPARE_URL('f?p=BUILDX:1:'||v('SESSION')||':APEX_SUSPENDED');--STOP:::P1_APP_MAINT,P1_APP_MSG:'||apex_application.g_flow_id||','||l_msg);
    end if;
  end if;

  -- replace addenda's existing process, where this was originally
  if apex_application.g_flow_id = 108
  and apx_utils.protect_addenda_pages(p_app_id => v('APP_ID'), p_app_page_id => v('APP_PAGE_ID')) then
    -- B68 redirect to VBS home instead
    l_url := APEX_UTIL.PREPARE_URL('f?p=BUILDX:HOME:'||v('SESSION')||':SECURITY');
  end if;

  if apex_application.g_flow_id = 210
  and apex_application.g_flow_step_id not in (1, 501, 1000) -- SW 2017/04/28 (may need to add p21? 500?)
  and not v('F_ROLE_DEV') = 'Y' -- SW HF20170725 just devs excempt, not all of IT
  then
    logger.log('report protect', l_scope, p_log_level => logger.g_apex);
  begin
    select count(*)
    into l_exists
    from dual
    where exists
     (select null from apx_application_pages p
      where p.application_id  = apex_application.g_flow_id
        and p.page_id = apex_application.g_flow_step_id
        and (page_group = 'Menus'
           or page_alias LIKE 'SUB/_%' escape '/')
     )
    or exists
     (select null
      from sec_authorisations_vw a
      join apx_report_auth ra
         on ra.app_id  = apex_application.g_flow_id
        and ra.page_id = apex_application.g_flow_step_id
        and (ra.role_name = a.role_name
          or ra.priv_key  = a.priv_key)
      where grantee = apex_application.g_user
    );
    if l_exists=0 then
      logger.log('no access to report', l_scope);
      l_url := APEX_UTIL.PREPARE_URL('f?p=REPUT:HOME:'||v('SESSION')||':SECURITY:::P1_PAGE_ID:'||apex_application.g_flow_step_id);
    end if;

  exception when others then
    logger.log('huh?:'||sqlerrm, l_scope);
  end;
  end if;

  -- Anything else should have has_app_acccess applied?
  -- Or maybe not until dedicated app privilege available (I think there is trello on this, at least an email...)
  -- app level privilege would just be associated declaratively? but what does that look like? message only defineable in app?

  -- if redirect required, do it.
  if l_url is not null then
    logger.log('Redirecting to url:'||l_url, l_scope);
    htp.init();
    apex_util.redirect_url(l_url, false);
  end if;

end verify_function;

function is_authorized (p_authorization_name varchar2)
return varchar2 is
begin
  if apex_authorization.is_authorized (
                       p_authorization_name => p_authorization_name )
  then
    return 'Y';
  else
    return 'N';
  end if;
end is_authorized;

-- Return null if app active, or if user in list of accepted users.
-- Returns message to display if app suspended
function app_is_active(p_app_id number) return varchar2 is
  l_users   apx_app_control.restricted_users%type;
  l_status  apx_app_control.status%type;
  l_message apx_app_control.message%type;
  l_default apx_app_control.message%type := 'Application currently being upgraded. Try again later.';
  l_scope logger_logs.scope%type := gc_scope_prefix || 'app_is_active';
begin
  if p_app_id = 150 then
    -- Common modal app, no check necessary.
    return null;
  end if;

  -- tolerate commas instead of colons, and spaces.
  select replace(replace(restricted_users,',',':'),' '), status, message
  into l_users, l_status, l_message
  from apx_app_control
  where app_id = p_app_id;

  if p_app_id != 101 then
    logger.log('app_is_active (app-status-users):'||p_app_id||'-'||l_status||'-'||l_users
              , p_scope => l_scope, p_log_level => logger.g_sys_context);
  end if;

  if l_status = 'ACTIVE' then
    -- if active, return all good, regardless of message saved for next time.
    return null;

  elsif instr(':'||l_users||':', ':'||apex_application.g_user||':') > 0 then
    logger.log('user on exception list', l_scope);
    return null;
  end if;

  return coalesce(l_message, l_default);
exception when no_data_found then
  logger.log('application not found', l_scope);
  return null; -- is this for copies of VHG apps? Maybe only return null in dev?
  --return 'This application is not defined in local application control. Contact IT.'; -- no app, no entry
end app_is_active;

procedure activate_app(p_app_id apx_app_control.app_id%type) is
begin
  logger.log('activate_app (p_app_id):'||p_app_id, p_scope => 'apx_utils.activate_app');

  update apx_app_control
  set status = 'ACTIVE'
   ,message = case when app_id = 101 then '(Suspending this application disables access to all other applications)' else message end
  where app_id = p_app_id;

  if sql%rowcount = 0 then
    -- add if missing
    logger.log('app added to apx_app_control (p_app_id):'||p_app_id, p_scope => 'apx_utils.activate_app');
    insert into apx_app_control (app_id, status, restricted_users)
    select application_id, 'ACTIVE', 'WESLEYS:KELLYK:MARSHALLK:HUGHESSH:CRAIGP:BRUNINIC'
    from apx_applications a
    where application_id = p_app_id;
  end if;

  apx_message.add_success('Application '||p_app_id||' activated');

end activate_app;

procedure suspend_app
  (p_app_id            apx_app_control.app_id%type
  ,p_message           apx_app_control.message%type
  ,p_restricted_users  apx_app_control.restricted_users%type) is
  l_scope logger_logs.scope%type := gc_scope_prefix || 'suspend_app';
  l_params logger.tab_param;
begin
  logger.append_param(l_params, 'p_app_id', p_app_id);
  logger.append_param(l_params, 'p_message', p_message);
  logger.append_param(l_params, 'user', sys_context('userenv','session_user'));
  logger.append_param(l_params, 'p_restricted_users', p_restricted_users);
  logger.log('START', l_scope, null, l_params);

  if has_dev_role(p_developer => true, p_login_id => apex_application.g_user) then
    logger.log('you are a developer', l_scope);
  else
    logger.log('you are NOT a developer', l_scope);
  end if;

  -- assertion to ensure current user has access to do this
  --if apex_application.g_user not in ('WESLEYS','HARRISE','MARSHALLK','HUGHESSH') then
  if not (has_dev_role(p_developer => true, p_login_id => apex_application.g_user)
  OR sys_context('userenv','session_user') in ('APX_ADMIN', 'VBSMASTER') -- B35 allow run from SQL Developer
  ) then
    logger.log('Not authorised to suspend application', l_scope);
    -- message not needed if we're propogating exceptions instead
    -- apex_util.set_session_state('P0_ERROR', 'Not authorised to suspend application');
    raise_application_Error(-20001, 'Not authorised to suspend application');
    return;
  end if;

  update apx_app_control
  set status = 'SUSPENDED'
      ,message = coalesce(p_message, message)
      ,restricted_users = coalesce(p_restricted_users, restricted_users)
  where app_id  = p_app_id;
  logger.log(sql%rowcount||' application suspended', l_scope);

  if sys_context('userenv','session_user') in ('APX_ADMIN', 'VBSMASTER') then
    -- If running from SQL Developer
    commit;
  else
    apx_message.add_success('Application '||p_app_id||' suspended');
  end if;
  logger.log('END suspend app', l_scope);
end suspend_app;

procedure suspend_user(p_login_id varchar2) is
begin
  logger.log('suspend_user:'||p_login_id, gc_scope_prefix || 'suspend_user');
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.lock_user(p_login_id);
  apx_message.add_success('User '||p_login_id||' locked.');
exception when others then
  apx_message.add_error(sqlerrm);
end suspend_user;

procedure reenable_user(p_login_id varchar2) is
begin
  logger.log('reenable_user:'||p_login_id, gc_scope_prefix || 'reenable_user');
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.reenable_user(p_login_id);
  apx_message.add_success('User '||p_login_id||' activated.');
exception when others then
  apx_message.add_error(sqlerrm);
end reenable_user;

procedure create_user
  (p_login_id  varchar2
  ,p_password  varchar2) is
begin
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.create_user(p_login_id, p_password);
  apx_message.add_success('Account '||p_login_id||' created. Time for roles!');
exception when others then
  apx_message.add_error( sqlerrm);
end create_user;


procedure apply_user_roles(p_login_id varchar2) is
begin
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.apply_user_roles(p_login_id);
  apx_message.add_success('Roles applied.');
end apply_user_roles;

procedure revoke_role
  (p_login_id     varchar2
  ,p_granted_role varchar2) is
begin
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.revoke_role(p_login_id, p_granted_role);
  apx_message.add_success( 'It''s just been revoked - Murtaugh');
exception when others then
  apx_message.add_error(sqlerrm);
end revoke_role;

-- These password procedures are all used within dynamic actions
-- hence the exception handlers.

procedure password_jumble
  (p_login_id varchar2) is
  l_pwd varchar2(50);
begin
  logger.log('password_jumble:'||p_login_id, gc_scope_prefix || 'password_jumble');
  -- Defer to package with privilege, but still check client allowed to call this
  l_pwd := apx_admin.vbs_security.password_jumble(p_login_id);
  apx_message.add_success('Password reset to '||l_pwd);
exception when others then
  apx_message.add_error(sqlerrm);
end password_jumble;

procedure password_simple_reset
  (p_login_id varchar2) is
begin
  logger.log('password_simple_reset:'||p_login_id, gc_scope_prefix || 'suspend_user');
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.password_simple_reset(p_login_id);
  apx_message.add_success('Password reset to standard simple format');
exception when others then
  apx_message.add_error(sqlerrm);
end password_simple_reset;

procedure password_self_reset
  (p_current_password  varchar2
  ,p_new_password      varchar2) is
begin
  logger.log('password_self_reset', gc_scope_prefix || 'password_self_reset');
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.password_self_reset(p_current_password, p_new_password);
  apx_message.add_success('Password successfully reset');
exception when others then
  apx_message.add_error(sqlerrm);
end password_self_reset;

procedure password_reset
  (p_login_id      varchar2
  ,p_new_password  varchar2)  is
begin
  logger.log('password_reset:'||p_login_id, gc_scope_prefix || 'password_reset');
  -- Defer to package with privilege, but still check client allowed to call this
  apx_admin.vbs_security.password_reset(p_login_id, p_new_password);
  apx_message.add_success('Password reset to nominated value');
exception when others then
  apx_message.add_error(sqlerrm);
end password_reset;

-- Does user have either developer role
-- replacement of U_ITREF
function has_dev_role
  (p_developer  boolean default true
  ,p_demo       boolean default true
  ,p_login_id     in     sec_user_offices.login_id%type default coalesce(SYS_CONTEXT('CTX_CRM','SALES_REP'), SYS_CONTEXT('CTX_CRM','SALES_QUAL'), apex_application.g_user)
  )
  return boolean   RESULT_CACHE
is
begin
  return user_has_privilege
      (p_login_id => p_login_id
      ,p_priv_key => case when p_developer then 'AAXX' end -- dev
      ,p_priv_key_2 => case when p_developer then 'AAXY' end -- demo
      );
end has_dev_role;

-- verify user office combo selected for user
-- return a valid combo if this one isn't.
procedure verify_user_office
  (p_div_code     in out sec_user_offices.div_code%type
  ,p_sales_office in out sec_user_offices.sales_office%type
  ,p_login_id     in     sec_user_offices.login_id%type default coalesce(SYS_CONTEXT('CTX_CRM','SALES_REP'), SYS_CONTEXT('CTX_CRM','SALES_QUAL'), apex_application.g_user)
  ) is
  l_exists   pls_integer;
begin
  -- check if the combo exists for the user
  select count(*)
  into l_exists
  from dual
  where exists
    (select null
     from sec_user_offices o
     where o.login_id     = p_login_id
     and   o.div_code     = p_div_code
     and   o.sales_office = p_sales_office);

  if l_exists = 0 then
    -- if not, first find something in the same division
    << default_combo >>
    begin
      select min(sales_office)
      into   p_sales_office
      from   sec_user_offices
      where  div_code = p_div_code
      and    login_id = p_login_id
      fetch first row only;
    exception when no_data_found then
      -- otherwise just return any valid row for the user
      select div_code, sales_office
      into   p_div_code, p_sales_office
      from   sec_user_offices
      where  login_id = p_login_id
      fetch first row only;

    end default_combo;

  end if;

end verify_user_office;

-- Error handler for apex application, with signature as per documentation
FUNCTION error_handler
  (p_error  IN  apex_error.t_error)
   RETURN apex_error.t_error_result IS
    l_result          apex_error.t_error_result;
    l_reference_id    NUMBER;
    l_constraint_name VARCHAR2(255);
	l_scope logger_logs.scope%type := gc_scope_prefix || 'error_handler';
  l_params logger.tab_param;
BEGIN
  l_result := apex_error.init_error_result (p_error => p_error);

  logger_user.logger.ins_logger_logs(
    p_unit_name => 'error_handler' ,
    p_scope => 'apx_util.error_handler' ,
    p_logger_level => logger.g_error,
    p_extra => p_error.component.name
              ||'~'||p_error.component.type
              ||'~'||p_error.message,
    p_text => 'apx_util.error_handler()',
    p_call_stack => dbms_utility.format_call_stack,
    p_line_no => null,
    po_id => l_reference_id);
  --logger.imprint_buffer;

  /* Use the following SQL to see the error number reported
select time_stamp, module, client_identifier, extra
from logger_user.logger_logs
where id = 12292314;
  */

  --debug('apx_util.error_handler()','apx_util.error_handler', p_commit => true);
  logger.log(' error message     :'||     p_error.message        , p_scope => l_scope  );    /* Displayed error message */
  logger.log(' additional_info   :'||     p_error.additional_info, p_scope => l_scope   );    /* Only used for display_location ON_ERROR_PAGE to display additional error information */
  --pr_sw_dummy(' display_location  :'||     p_error.display_location  );    /* Use constants "used for display_location" below */
  --pr_sw_dummy(' association_type  :'||     p_error.association_type  );    /* Use constants "used for asociation_type" below */
  --debug(' page_item_name    :'||     p_error.page_item_name, p_commit => true    );    /* Associated page item name */
  --debug(' region_id         :'||     p_error.region_id, p_commit => true         );    /* Associated tabular form region id of the primary application */
  --pr_sw_dummy(' column_alias      :'||     p_error.column_alias      );    /* Associated tabular form column alias */
  --pr_sw_dummy(' row_num           :'||     p_error.row_num           );    /* Associated tabular form row */
  --pr_sw_dummy(' is_internal_error :'||     is_internal_error );    /* Set to TRUE if it's a critical error raised by the APEX engine, like an invalid SQL/PLSQL statements, ... Internal Errors are always displayed on the Error Page */
  logger.log(' apex_error_code   :'||     p_error.apex_error_code, p_scope => l_scope   );    /* Contains the system message code if it's an error raised by APEX */
  --pr_sw_dummy(' ora_sqlcode       :'||     p_error.ora_sqlcode       );    /* SQLCODE on exception stack which triggered the error, NULL if the error was not raised by an ORA error */
  --pr_sw_dummy(' ora_sqlerrm       :'||     p_error.ora_sqlerrm       );    /* SQLERRM which triggered the error, NULL if the error was not raised by an ORA error */
  --pr_sw_dummy(' error_backtrace   :'||     p_error.error_backtrace   );    /* Output of dbms_utility.format_error_backtrace or dbms_utility.format_call_stack */
  logger.log(' component type    :'||p_error.component.type, p_scope => l_scope);
  --pr_sw_dummy('component id:'||p_error.component.id);
  logger.log(' component name    :'||p_error.component.name, p_scope => l_scope);
  --l_reference_id := logger_user.logger_logs_seq.currval;

  -- If it's an internal error raised by APEX, like an invalid statement or
  -- code which can't be executed, the error text might contain security sensitive
  -- information. To avoid this security problem we can rewrite the error to
  -- a generic error message and log the original error message for further
  -- investigation by the help desk.
  IF p_error.is_internal_error THEN
    logger.log('is internal error', l_scope);
--*** we may only need to come in here with
    -- Access Denied errors raised by application or page authorization should
    -- still show up with the original error message
    IF p_error.apex_error_code = 'APEX.SESSION.EXPIRED' then
       l_result.message := 'Your session has expired. <a href="f?p=BUILDX:LOGIN">Login</a>';
       --||htf.script('$(".t-Alert-body p").hide();setTimeout(function() {$(".t-Icon").removeClass("t-Icon").addClass("fa fa-emoji-sleeping fa-5x fa-lg u-color-12-text");},5);');
       --https://stackoverflow.com/questions/799981/document-ready-equivalent-without-jquery
       --||htf.script('document.addEventListener("DOMContentLoaded", function(event) {$(".t-Icon").removeClass("t-Icon").addClass("fa fa-emoji-sleeping fa-5x fa-lg u-color-12-text");$(".t-Alert-body p").hide();});');

    -- idea needs fleshing out, my interrupt current expiry processing.

    elsIF p_error.apex_error_code = 'APEX.AUTHORIZATION.ACCESS_DENIED'
    and p_error.additional_info = 'Access denied by Application security check' then
       l_result.message := 'You do not have privilege to access this application.'--' <a href="f?p=BUILDX:HOME:'||v('SESSION')||':APP_SECURITY">Home</a>'
       --||htf.script('setTimeout(function() {$(".t-Alert-body p").hide();$(".t-Icon").removeClass("t-Icon").addClass("fa fa-cloud-lock fa-5x fa-lg u-color-9-text");},5);');
       ||htf.script('document.addEventListener("DOMContentLoaded", function(event) {$(".t-Alert-inset,.t-Alert-body p").hide();$(".t-Icon").removeClass("t-Icon").addClass("fa fa-cloud-lock fa-5x fa-lg u-color-9-text");});');

    elsif p_error.apex_error_code <> 'APEX.AUTHORIZATION.ACCESS_DENIED' then
      -- log error for example with an autonomous transaction and return
      -- l_reference_id as reference#
      -- l_reference_id := log_error (
      --                       p_error => p_error );

      --*** Ideally we'd log the error and provide a quick reference for IT
      -- perhaps logged separately to the debug information.

      -- Change the message to the generic error message which doesn't expose
      -- any sensitive information.
      l_result.message         := 'We had a problem completing this request. '||
                                  'Please contact IT Support'||
                                  --'and provide reference# '||to_char(l_reference_id, '999G999G999G990')||
                                  ' for further investigation. Reference: '||l_reference_id
                                  -- I'd like to use built in instead of this item, so we can see for all users in dev
                                  ||case when v('F_ROLE_DEV') = 'Y' -- anyone with privilege
                                  -- or has builder open (from oos_util_apex.is_developer)
                                  or coalesce(apex_application.g_edit_cookie_session_id, v('APP_BUILDER_SESSION')) is not null then
                                    ' Dev only: '||p_error.component.name
                                    ||' ~ '||p_error.component.type
                                    ||' ~ '||p_error.message
                                  end

                                  ;
      l_result.additional_info := null;
    END IF;
  ELSE
    logger.log('inline error', l_scope);
    -- Always show the error as inline error
    -- Note: If you have created manual tabular forms (using the package
    --       apex_item/htmldb_item in the SQL statement) you should still
    --       use "On error page" on that pages to avoid losing entered data
    l_result.display_location :=
      CASE
        WHEN l_result.display_location = apex_error.c_on_error_page THEN
          apex_error.c_inline_in_notification
        ELSE
          l_result.display_location
      END;

    -- If it's a constraint violation like
    --
    --   -) ORA-00001: unique constraint violated
    --   -) ORA-02091: transaction rolled back (-> can hide a deferred constraint)
    --   -) ORA-02290: check constraint violated
    --   -) ORA-02291: integrity constraint violated - parent key not found
    --   -) ORA-02292: integrity constraint violated - child record found
    --
    -- we try to get a friendly error message from our constraint lookup configuration.
    -- If we don't find the constraint in our lookup table we fallback to
    -- the original ORA error message.
    IF p_error.ora_sqlcode IN (-1, -2091, -2290, -2291, -2292) then
      l_constraint_name := apex_error.extract_constraint_name (p_error => p_error);

      << find_custom_error >>
      BEGIN
        SELECT message
          INTO l_result.message
          FROM apx_constraint_lookup
         WHERE constraint_name = l_constraint_name;
      EXCEPTION WHEN NO_DATA_FOUND THEN
        NULL; -- not every constraint has to be in our lookup table
      END find_custom_error;
    END IF;

    -- If an ORA error has been raised, for example a raise_application_error(-20xxx, '...')
    -- in a table trigger or in a PL/SQL package called by a process and we
    -- haven't found the error in our lookup table, then we just want to see
    -- the actual error text and not the full error stack with all the ORA error numbers.
    IF  p_error.ora_sqlcode = -20022 THEN
      -- 105:3, should also be fetched from a/the lookup table
      l_result.message := 'Uploaded image has not finished processing, please try again in a few moments.';

    ELSIF  p_error.ora_sqlcode IS NOT NULL
    AND l_result.message = p_error.message THEN
      l_result.message := apex_error.get_first_ora_error_text (
                              p_error => p_error );
    END IF;

    -- If no associated page item/tabular form column has been set, we can use
    -- apex_error.auto_set_associated_item to automatically guess the affected
    -- error field by examine the ORA error for constraint names or column names.
    IF  l_result.page_item_name IS NULL
    AND l_result.column_alias   IS NULL THEN
      apex_error.auto_set_associated_item (
          p_error        => p_error,
          p_error_result => l_result );
      -- But don't override local display location
      l_result.display_location := 'INLINE_IN_NOTIFICATION';
    END IF;
  END IF;
  logger.log('display location:'||l_result.display_location, l_scope);

  RETURN l_result;
END error_handler;

procedure become_user is
l_become sec_users.login_id%type;
l_itref  varchar2(1);
begin
-- replace with sys_context, so don't need item in every app
-- easier to store orig name, too.
-- so we can enable become page when already became.
-- can I turn off client side validation so I can "Login" button?

  l_become := sys_context('CTX_VBS','BECOME_LOGIN_ID');
  -- re-affirm the selection for each render/ajax request
  -- called from app initialisation code
  -- setup behaviour privileged with AAXZ
  -- https://trello.com/c/3aBZVxNW
  if l_become is not null
  --and v('REQUEST') != 'unbecome'
  then
    logger.log('Become visit:'||l_become||':'||apex_application.g_flow_id||':'||apex_application.g_flow_step_id,'apx_utils.become_user');

    -- Let's also log what pages they visited whilst doing so
    begin
    insert into become_page_log (login_Id, become_user, become_date, app_id, page_id)
    values (apex_application.g_user, l_become, sysdate, apex_application.g_flow_id, apex_application.g_flow_step_id);
    exception when dup_val_on_index then
      null;-- already logged this one, right this second...
    end;

    -- Have to log it before this ;p
    APEX_CUSTOM_AUTH.SET_USER(l_become);

    -- do we need this on *every* page load?
    --on_new_instance;

  end if;
end become_user;

procedure unbecome is
  l_itref  varchar2(1);
begin
  logger.log('Unbecome: restore to '||sys_context('CTX_VBS','ORIG_LOGIN_ID'), 'apx_utils.unbecome');
  clear_app_context(sys_context('CTX_VBS','BECOME_LOGIN_ID'));
  APEX_CUSTOM_AUTH.SET_USER(sys_context('CTX_VBS','ORIG_LOGIN_ID'));
  apx_utils.set_parameter('CTX_VBS','ORIG_LOGIN_ID',null);
  apx_utils.set_parameter('CTX_VBS','BECOME_LOGIN_ID',null);
  apex_authorization.reset_cache;

  on_new_instance;
end unbecome;

procedure apply_become
  (p_app_user varchar2) is
 l_exists  number;
begin
  -- re-test authorisation
  if not vbsmaster.apx_utils.user_has_privilege
       (p_login_id => nvl(sys_context('CTX_VBS','ORIG_LOGIN_ID'), apex_application.g_user)
       ,p_priv_key => 'AAXZ'
       ,p_priv_key_2 => 'AAX0')
  then
    vbsmaster.apx_util.debug('APEX user must have a Become privilege', p_src => 'apx_utils.apply_become');
    raise_application_error(-20100, 'APEX user must have a Become privilege');
  end if;

  -- ensure the user exists
  select count(*)
  into l_exists
  from dual
  where exists (select null from sec_users where login_id = p_app_user);

  -- if restricted, ensure they are subordinate

  apex_debug.message('Become:'||p_app_user);
  logger.log('Become:'||p_app_user,'101:100');
  if sys_context('CTX_VBS','ORIG_LOGIN_ID') is null then
    -- if switching become, don't over-write orig_login_id with first become.
    apx_utils.set_parameter('CTX_VBS','ORIG_LOGIN_ID',apex_application.g_user);
  end if;
  apx_utils.set_parameter('CTX_VBS','BECOME_LOGIN_ID',p_app_user);

  clear_app_context(sys_context('CTX_VBS','ORIG_LOGIN_ID'));

  -- we should most certainly log this.
  insert into become_user_log (login_Id, become_user, become_date)
  values (apex_application.g_user, p_app_user, sysdate);

  -- This needs to be called in the Security - Initialisation Code for every app within scope
  -- apx_util_util.become_user
  APEX_CUSTOM_AUTH.SET_USER(p_app_user);
  apex_authorization.reset_cache;

  --trying here instead
  ---on_new_instance;
  -- maybe just try essentials. Apps that need specific retriggering can do so
  populate_app_context;

  -- trigger this in dev/test
  if apx_admin.vbs_util.not_prod then
    apex_util.set_session_state('F_TRIGGER_CRM_INSTANTIATION', 'Y');
    apex_util.set_session_state('F_TRIGGER_PROJ_INSTANTIATION', 'Y');
    apex_util.set_session_state('F_TRIGGER_CONSUT_INSTANTIATION', 'Y');
  end if;

exception when no_data_found then
 apex_debug.message('User not found:'||p_app_user);
 raise_application_error(-20001,'User '||apex_escape.html(p_app_user)||' does not exist');
end apply_become;

function logout_url return varchar2 is
begin
  if g_logout_url is not null then
    return g_logout_url;
  else
    select
    -- https://hajekj.net/2017/02/27/to-single-sign-out-or-not-to/
    --,'https://login.microsoftonline.com/1a458930-72a3-45f0-a46a-9122ce24f7e7/oauth2/logout?post_logout_redirect_uri='
      (select rv_meaning
              from ref_codes
              where rv_domain = 'OFFICE365_INTEGRATION_SETTINGS'
              and rv_value = 'AZURE_OAUTH_LOGOUT_URL'
          )
        /* server host relevant to environment (db name) */
       -- https://buildingdev.vhgroup.com.au/ords/
        ||(select value
            from com_app_parameters
            where app_code = upper(sys_context('userenv','db_name'))
            and parameter = 'URL_PREFIX'
            )
        -- where are they going?
        ||'f?p=BUILDX:LOGIN:0'
              /* not needed because bhg merge
              ||case sys_context('ctx_vbs','coy_code')
                when 'VPL' then 'VBS:LOGIN' -- poorly named
                when 'BHG' then 'BGCHG:LOGIN' -- redirect for newbie
                else 'VBS:LOGIN:0:NO_COY' -- passively identify issue
                --else sys_context('ctx_vbs','coy_code')
                end*/
    into g_logout_url
    from dual;
  end if;
  return g_logout_url;
end logout_url;

-- return literal strings, instead of hard-coding everywhere
FUNCTION get_coy_vhg RETURN VARCHAR2 RESULT_CACHE IS BEGIN RETURN(gc_coy_vhg); END get_coy_vhg;
FUNCTION get_coy_bhg RETURN VARCHAR2 RESULT_CACHE IS BEGIN RETURN(gc_coy_bhg); END get_coy_bhg;

-- set/get what coy is being represented
FUNCTION get_coy RETURN VARCHAR2 IS
BEGIN
  --logger.log('current context:'||sys_context('ctx_vbs','coy_code'), 'apx_utils.get_coy');
  if sys_context('ctx_vbs','coy_code') is null then
    -- probably during f?p=VBS:LOGIN::TIMEOUT
    select coy_code
    into g_coy_code
    from coys
    where deactive_date is null
    and rownum = 1; -- shouldn't be necessary, but for justin
    -- logger.log('return g_coy_code:'||g_coy_code, 'apx_utils.get_coy');
    return g_coy_code;
  else
    -- logger.log('return context', 'apx_utils.get_coy');
    RETURN(sys_context('ctx_vbs','coy_code'));
  end if;
END get_coy;
function get_coy_dsp return varchar2 is
  l_coy_code coys.coy_code%type;
begin
  -- or should this just be part of the table?
  l_coy_code := nvl(g_coy_code, get_coy);
  return case l_coy_code
         when 'BHG' then 'BGCHG'
         when 'VPL' then 'VHG'
         end;
end get_coy_dsp;

-- set to specific coy, if user has access
PROCEDURE set_coy(p_coy_code sales_offices.coy_code%type) is
begin
  logger.log('set_coy:'||p_coy_code, 'apx_utils.set_coy');

  --if has_coy(p_coy_code) then
    g_coy_code := p_coy_code;
    apx_utils.set_parameter('ctx_vbs','coy_code', g_coy_code);
    apx_crm_utils.set_parameter('coy_code', g_coy_code);
    -- set application item, if it exists
    FOR r_rec IN
      (select null
       from apex_application_items
       where application_id = apex_application.g_flow_id
       and item_name = 'F_COY_CODE')
    LOOP
      apex_util.set_session_state('F_COY_CODE', p_coy_code);
    end loop;
  /*else
    raise_application_error(-20202, 'User has no access to coy '||p_coy_code);
  end if;*/
end set_coy;
/*
PROCEDURE set_coy_by_brand(p_sales_office sales_offices.sales_office%type) is
  l_coy_code coys.coy_code%type;
begin
  logger.log('set_coy based on brand:'||p_sales_office, 'apx_utils.set_coy_by_brand');

  select coy_code
  into l_coy_code
  from sales_offices
  where sales_office = p_sales_office;

  set_coy(l_coy_code);
exception when no_data_found then
  -- not a valid sales office, coy not set.
  null;
end set_coy_by_brand;

-- does user have access to these coys?
FUNCTION has_coy(p_coy_code coys.coy_code%type) RETURN BOOLEAN is
 l_exists pls_integer;
begin
 if apex_application.g_user is null then
   -- in db session, just set the variable
   return true;
 end if;
 select count(*)
 into l_exists
 from dual
 where exists
  (select null
   from sec_user_offices
   where login_id = apex_application.g_user
   and coy_code = p_coy_code
   );
  return l_exists = 1;
end has_coy;

FUNCTION has_vhg RETURN BOOLEAN is
 l_exists pls_integer;
begin
  return has_coy(apx_utils.get_coy_vhg);
end has_vhg;
FUNCTION has_bhg RETURN BOOLEAN is
 l_exists pls_integer;
begin
  return has_coy(apx_utils.get_coy_bhg);
end has_bhg;

-- flip whatever current coy is (presumes 2, defaults to VHG)
PROCEDURE flip_coy is
begin
  set_coy(case when get_coy = apx_utils.get_coy_vhg
          then apx_utils.get_coy_bhg
          else apx_utils.get_coy_vhg
          end);
end flip_coy;
-- does user have more than one coy?
FUNCTION multi_coy_user RETURN BOOLEAN is
  l_coy_code coys.coy_code%type;
begin
  select distinct coy_code
  into l_coy_code
  from sec_user_offices
  where login_id = apex_application.g_user;
  return false;
exception when too_many_rows then
  return true;
end multi_coy_user;
*/


/*
    Function:  get_sec_user
    Purpose:   Get a User.

    Parameters:
    p_login_id    IN  User Login ID

    Change History
    Date          Version    Author               Description
    ----------    -------    ------               ------------
    4/02/2020    1.0        HARRISE (SAGE)        Initial Version.
*/
FUNCTION get_sec_user  ( p_login_id IN  sec_users.login_id%TYPE
) RETURN sec_users%ROWTYPE IS

  -- Variable Declaration
  --
  l_scope            logger_logs.scope%TYPE := gc_scope_prefix||'get_sec_user';
  l_params           logger.tab_param;
  l_r_user           sec_users%ROWTYPE;
BEGIN
  logger.append_param(l_params, 'p_login_id', p_login_id);
  logger.log('START', l_scope, null, l_params);

  BEGIN
    select *
    into l_r_user
    from sec_users
    where login_id = p_login_id
    and   deactive_date is null;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
          NULL;
  END;

  logger.log('END', l_scope);

  RETURN(l_r_user);

END get_sec_user;

/*
This code changes the favicon for pages within APEX.
Used to Populate BX_FAVICON on new instance of f101 application.
It's possible that the core location could be pulled from the application substitution string, but this has not been explored.
*/
function favicon_code return varchar2 is
l_core varchar2(16) := '/c/core/';
begin
return '<link rel="manifest" href="/manifest.json">

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="BuildX">

<link rel="shortcut icon" href="'||l_core||'images/buildX-72.png">
<link rel="icon" href="'||l_core||'images/buildX-72.png" sizes="72x72">

<link rel="apple-touch-icon" href="'||l_core||'images/buildX-72.png" sizes="72x72">
<link rel="apple-touch-icon" href="'||l_core||'images/buildX-144.png" sizes="144x144">
<!--<link rel="apple-touch-icon" href="'||l_core||'images/buildX-152.png" sizes="152x152">-->

<meta name="msapplication-TileImage" content="'||l_core||'images/buildX-144.png">
<meta name="msapplication-TileColor" content="#fff">

<meta name="theme-color" content="#3f51b5">
<script>
var appImages = "'||l_core||'images";
</script>';

end favicon_code;

END apx_utils;
/

