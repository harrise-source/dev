create or replace PACKAGE apx_utils AS
/**
 *  File         : apx_utils.pks
 *  Description  : Package contains user authorization procedures specifically designed for APEX
 *  Change History
 *  Date          Version    Author               Description
 *  ----------    -------    ------               ------------
 */

  -- Called by authentication component
  PROCEDURE post_authentication;

  -- Authorisation plug-in
  FUNCTION is_authorized
    (p_authorization IN apex_plugin.t_authorization
    ,p_plugin        IN apex_plugin.t_plugin)
    RETURN apex_plugin.t_authorization_exec_result;

  -- Instantiate application
  PROCEDURE on_new_instance;

  -- does the user have the specified role?
  FUNCTION has_role
  (p_role VARCHAR2
  ,p_login_id varchar2 default apex_application.g_user -- SW 5/9/16
  ) RETURN BOOLEAN;

  -- One of four roles
  -- Designed for general addenda pages
  FUNCTION has_any_adde_role
    ( p_login_id  sec_users.login_id%type default apex_application.g_user
    ) RETURN BOOLEAN;


  -- Designed for initial reporting access
  FUNCTION add_maint_or_itadmin RETURN BOOLEAN;

  -- Designed for special features like user list
  FUNCTION add_mgr_or_itadmin RETURN BOOLEAN;

  -- Will prevent navigation to addenda page in association with application process
  FUNCTION protect_addenda_pages
    (p_app_id       NUMBER
    ,p_app_page_id  NUMBER)
    RETURN BOOLEAN; -- TRUE means they shouldn't be here, so redirect!

  -- Can the user maintain stuff like callup master in construction
  FUNCTION cons_maint RETURN BOOLEAN;

  -- maintenance procedures for apx_page_auth
  PROCEDURE add_roles_to_pages
    (p_role_list    VARCHAR2
    ,p_page_list    VARCHAR2
    ,p_app_id       NUMBER
    ,p_delimiter    VARCHAR2 DEFAULT ',');

  PROCEDURE remove_role_from_page
    (p_role_name    VARCHAR2
    ,p_page_id      NUMBER
    ,p_app_id       NUMBER
    );

  PROCEDURE remove_page_auth
    (p_page_id      NUMBER
    ,p_app_id       NUMBER
    );

  -- Translate ID to readable ROW_KEY
  function compress_int
    (n in integer )
    return varchar2 deterministic;

  -- Does the user have nay of the given privileges
  FUNCTION user_has_privilege
    (p_login_id   user_master.login_id%TYPE
    ,p_priv_key   apx_privileges.priv_key%TYPE
    ,p_priv_key_2 apx_privileges.priv_key%TYPE DEFAULT NULL
    ,p_priv_key_3 apx_privileges.priv_key%TYPE DEFAULT NULL
    ,p_fast       boolean default false -- B6
  ) RETURN BOOLEAN;

  FUNCTION user_has_privilege_sql
    (p_login_id   user_master.login_id%TYPE
    ,p_priv_key   apx_privileges.priv_key%TYPE)
    RETURN PLS_INTEGER; -- return 1 if true, so can be used in SQL

  -- Function checked within authorisation plug-in
  FUNCTION privilege_authorized
    (p_authorization IN apex_plugin.t_authorization
    ,p_plugin        IN apex_plugin.t_plugin)
    RETURN apex_plugin.t_authorization_exec_result;

  FUNCTION has_app_access_sql
    (p_login_id  user_master.login_id%TYPE
    ,p_app_id    apex_applications.application_id%TYPE)
  RETURN PLS_INTEGER; -- return 1 if true, so can be used in SQL

  FUNCTION has_app_access
    (p_login_id  user_master.login_id%TYPE
    ,p_alias     apex_applications.alias%TYPE)
  RETURN BOOLEAN;

  FUNCTION has_app_access
    (p_login_id  user_master.login_id%TYPE
    ,p_app_id    apex_applications.application_id%TYPE)
  RETURN BOOLEAN;

  -- colour the menu for dev/test
  procedure env_branding;
  function env_title return varchar2;

procedure set_base_id
  (p_id    varchar2
  ,p_alias varchar2 default apex_application.g_flow_alias
  ,p_label varchar2 default null
  );

PROCEDURE set_parameter
  (p_context    varchar2
  ,p_attribute  VARCHAR2
  ,p_value      VARCHAR2);

-- Control acccess to applications here
-- Should be application process in all applications
procedure verify_function;

function is_authorized (p_authorization_name varchar2)
return varchar2 ;

-- 201:25
procedure activate_app(p_app_id apx_app_control.app_id%type);
procedure suspend_app
  (p_app_id            apx_app_control.app_id%type
  ,p_message           apx_app_control.message%type
  ,p_restricted_users  apx_app_control.restricted_users%type);

-- 201:15
procedure suspend_user(p_login_id varchar2);
procedure reenable_user(p_login_id varchar2);
procedure create_user
  (p_login_id  varchar2
  ,p_password  varchar2);
procedure apply_user_roles(p_login_id varchar2);
procedure revoke_role
  (p_login_id     varchar2
  ,p_granted_role varchar2);

procedure password_jumble
  (p_login_id varchar2);
procedure password_simple_reset
  (p_login_id varchar2);
procedure password_reset
  (p_login_id      varchar2
  ,p_new_password  varchar2);
procedure password_self_reset
  (p_current_password  varchar2
  ,p_new_password      varchar2);

function has_dev_role
  (p_developer  boolean default true
  ,p_demo       boolean default true
  ,p_login_id     in     sec_user_offices.login_id%type default coalesce(SYS_CONTEXT('CTX_CRM','SALES_REP'), SYS_CONTEXT('CTX_CRM','SALES_QUAL'), apex_application.g_user)
  )

  return boolean RESULT_CACHE;

procedure verify_user_office
  (p_div_code     in out sec_user_offices.div_code%type
  ,p_sales_office in out sec_user_offices.sales_office%type
  ,p_login_id     in     sec_user_offices.login_id%type default coalesce(SYS_CONTEXT('CTX_CRM','SALES_REP'), SYS_CONTEXT('CTX_CRM','SALES_QUAL'), apex_application.g_user)
  );

FUNCTION error_handler
  (p_error  IN  apex_error.t_error)
   RETURN apex_error.t_error_result;

-- called for each page load
procedure become_user;

procedure unbecome;

-- called when the transformation takes place
procedure apply_become
  (p_app_user varchar2);

function logout_url return varchar2;

procedure get_user_default_office
  (p_login_id     in  sec_users.login_id%type
  ,p_div_code     out sec_user_Offices.div_code%type
  ,p_sales_office out sec_user_Offices.sales_Office%type
  ,p_user_default out sec_user_Offices.user_default%type
  );

-- return literal strings, instead of hard-coding everywhere
FUNCTION get_coy_vhg RETURN VARCHAR2 RESULT_CACHE;
FUNCTION get_coy_bhg RETURN VARCHAR2 RESULT_CACHE;

-- set/get what coy is being represented
FUNCTION get_coy RETURN VARCHAR2;
function get_coy_dsp return varchar2; -- BHG -> BGC HG; VPL -> VHG
-- (must be authorised)
PROCEDURE set_coy(p_coy_code  sales_offices.coy_code%type);

/*
PROCEDURE set_coy_by_brand(p_sales_office sales_offices.sales_office%type);
PROCEDURE flip_coy;

-- coy security
FUNCTION multi_coy_user RETURN BOOLEAN;
FUNCTION has_coy(p_coy_code coys.coy_code%type) RETURN BOOLEAN;
FUNCTION has_vhg RETURN BOOLEAN;
FUNCTION has_bhg RETURN BOOLEAN;
*/

FUNCTION get_sec_user  ( p_login_id IN  sec_users.login_id%TYPE
) RETURN sec_users%ROWTYPE;

function favicon_code return varchar2;

END apx_utils;
/
