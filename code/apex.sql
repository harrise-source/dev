
--------------------------------------------------------------------------------
--##Inline Dialog - Inline Popup menu 
--

Button to invoke 
--
Static ID = cal-info-btn

DA - On Click
--
Open Region

Region to display
--
Template = Inline Popup
Custom Attribute = data-parent-element="#cal-info-btn"



##Menu Popup - List

Button to invoke 
--
CSS Class = js-menuButton
Action = DA
Custom Attribute = data-menu="actions_menu"


List Region
--
Type = List
Template = Blank
List Reg Attributes = Menu Popup
Static ID = actions

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--Sub variables
--
&APP_SESSION.
&APP_ID.
&APP_PAGE_ID.



--------------------------------------------------------------------------------
-- apex_util.prepare_url
--
,apex_util.prepare_url('f?p='||:APP_ALIAS||':40:'||:APP_SESSION||':::40:P40_ID:'||client_id) lnk
    
'<a href="'||
  apex_util.prepare_url( p_url => 'f?p='||:APP_ID||':20:'||:APP_SESSION||':TIMELINE::20:P20_REQUEST_ID
    ,P0_RETURN_APP
    ,P0_RETURN_PAGE
    ,P0_RETURN_DESC
    ,P0_RETURN_ICON:'||
    TO_CHAR(wre.id)||'
    ,'||:APP_ID||'
    ,'||:APP_PAGE_ID||'
    ,'||'Find Request'||'
    ,'||'fa-search'
    ,p_checksum_type => 'SESSION')||
    '" class="t-Button t-Button--large t-Button--warning t-Button--simple t-Button--stretch" title="View Request Timeline"><span class="fa fa-gantt-chart"></span></a>'           timeline_link 

    

nv('') 
--short hand for 
APEX_UTIL.GET_NUMERIC_SESSION_STATE


/*
  APEX_APPLICATION
  --------------------------------------------------------------------------------
  Access to Global Variables
*/


/*
  APEX_UTIL
  --------------------------------------------------------------------------------
  Acces to Util functions
*/

begin
  apex_util.set_session_state(p_name  => 'my_item'
                             ,p_value => 'my_value');
end;

/*
  APEX_DEBUG
  ------------------------------------------------------------------------------
*/

PROCEDURE debug
  (p_msg    IN  VARCHAR2
  ,p_src    IN  VARCHAR2 DEFAULT 'apx_util'
  ,p_level  IN  PLS_INTEGER DEFAULT 1
  ,p_commit IN  BOOLEAN DEFAULT FALSE) IS
BEGIN
  IF p_level <= NVL(g_level, 1) THEN
    apex_debug_message.log_message(p_src||' => '||p_msg);
    --htp.prn(p_msg);
    null;
    --dbms_output.put_line(p_msg);
    --pr_sw_dummy(p_msg, p_user => v('APP_USER'), p_source=> p_src);

    INSERT INTO debug_log (debug_text, id, ts, hsecs, username, source, page_id, app_id)
    VALUES (p_msg
           ,debug_seq.NEXTVAL
           ,systimestamp
           ,DBMS_UTILITY.GET_TIME
           ,COALESCE(apex_application.g_user, USER) -- v('APP_USER')
           ,p_src
           ,apex_application.g_flow_step_id--v('APP_PAGE_ID')
           ,apex_application.g_flow_id);

    IF p_commit THEN
      COMMIT;
    END IF;
  END IF;
END debug;


/*
	APEX_APPLICATION_GLOBAL.VC_ARR2
  --------------------------------------------------------------------------------
	STRING_TO_TABLE()

	http://docs.oracle.com/cd/E37097_01/doc/doc.42/e35127/apex_util.htm#AEAPI1886

*/

DECLARE
    l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;
BEGIN
    l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE('One:Two:Three');

    FOR z IN 1..l_vc_arr2.count LOOP
        htp.p(l_vc_arr2(z));
    END LOOP;
END;

/*
	APEX_APPLICATION_GLOBAL.VC_ARR2 
  --------------------------------------------------------------------------------
	TABLE_TO_STRING()

	http://docs.oracle.com/cd/E37097_01/doc/doc.42/e35127/apex_util.htm#AEAPI1906

*/

create or replace function get_contacts ( 
    p_cust_id  in  number ) 
    return varchar2 
is 
    l_vc_arr2   apex_application_global.vc_arr2; -- subtype vc_arr2 is sys.dbms_sql.varchar2a;
    l_contacts  varchar2(32000); 
begin 
 
    select contact_name 
        bulk collect 
        into l_vc_arr2 
        from contacts 
    where cust_id = p_cust_id 
        order by contact_name; 
 
    l_contacts :=  apex_util.table_to_string ( 
                       p_table => l_vc_arr2, 
                       p_string => ', '); 
 
   return l_contacts; 
 
end get_contacts;



-- apex_t_varchar2
--------------------------------------------------------------------------------
-- DEFINTION -- create or replace NONEDITIONABLE type wwv_flow_t_varchar2 as table of varchar2(32767)
--
declare
  l_values      apex_t_varchar2
  l_first_value varchar2(100);
begin

  l_values := apex_string.split(p_str => 'VALUE1:VALUE2'
                               ,p_sep => ':');
  l_first_value := l_values(1);                    

end;
  




/* 
   APEX AND JSON
  --------------------------------------------------------------------------------
*/

-- turn a query into JSON
BEGIN
  APEX_UTIL.JSON_FROM_SQL(q'[SELECT csct.id  FROM t1  JOIN t2 ON t1.col = t2.col  WHERE order_no = '1111111']');
END;


-- turn items into JSON
DECLARE
  l_userid varchar2(100);
  l_email varchar2(100);
BEGIN
  l_userid := apex_application.g_x01;

   SELECT email, name
   into l_email, l_name
   FROM organisations_img
   WHERE upper(user_account) = upper(apex_application.g_x01);

apex_util.set_session_state('P7_X',l_email);
apex_util.json_from_items('P7_X');
apex_util.json_from_items('P7_NAME');

end;


EXCEPTION WHEN NO_DATA_FOUND THEN
  raise_application_Error(-20002, 'Problem obtaining information.');
END gather_email_info;

-----------------------------------------------------------------------------------------------------
/* JSON QUERIES */
-----------------------------------------------------------------------------------------------------

--{'Work type':'fulltime/partime'},{'Occupation':'none'}
SET SERVEROUTPUT ON
DECLARE
 JSon_String VARCHAR2(32767) := q'!{'Work type':'fulltime/partime'},{'Occupation':'none'}!';
BEGIN

FOR r_rec IN (
  WITH a AS  
   (SELECT REPLACE(REPLACE(  
               REPLACE(  
                   REPLACE(JSon_String  
                         ,'}')  
                      ,'{')  
                  ,''''),'"') AS str  
    FROM     DUAL)  
  SELECT  SUBSTR(TRIM (REGEXP_SUBSTR (STR, '[^,]+', 1, LEVEL)),1,INSTR(TRIM (REGEXP_SUBSTR (STR, '[^,]+', 1, LEVEL)),':')-1) attr_name
         ,SUBSTR(TRIM (REGEXP_SUBSTR (STR, '[^,]+', 1, LEVEL)),INSTR(TRIM (REGEXP_SUBSTR (STR, '[^,]+', 1, LEVEL)),':')+1) attr_value  
         ,str
  FROM       a  
  CONNECT BY LEVEL < LENGTH (str) - LENGTH (REPLACE (str, ',', NULL)) + 2) LOOP

  dbms_output.put_line(r_rec.attr_name);
  dbms_output.put_line(r_rec.attr_value);
  
END LOOP;

END;

-----------------------------------------------------------------------------------------------------
with json as
  (select
  q'![{'attribute':'Work type', 'value':'fulltime/partime'},{'attribute':'Occupation', 'value':'none'}]!' str
--      '[{"Postcode":"47100","OutletCode":"128039251","MobileNumber":"0123071303","_createdAt":"2014-11-10 06:12:49.837","_updatedAt":"2014-11-10 06:12:49.837"},' ||
--      ' {"Postcode":"32100","OutletCode":"118034251", "MobileNumber":"0123071303","_createdAt":"2014-11-10 06:12:49.837","_updatedAt":"2014-11-10 06:12:49.837"}]' str
  from
    dual
  )
,seperate_rows as
  (select
    level rn
    ,regexp_substr(str,'({[^}]+?})',1,level) rec
  from
    json
  connect by
    regexp_substr(str,'({[^}]+?})',1,level) is not null
  )
, fields (rn, fn/*, f_name*/, f_value) as
  (select
    rn
    ,1 fn
  --  ,trim('"' from trim( ':' from regexp_substr(rec,'"[^"]+?":',1,1) )) f_name
    ,trim('"' from trim( ':' from regexp_substr(rec,':"[^"]+?"',1, 1) )) f_value
  from
    seperate_rows
  union all
  select
    f.rn
    ,f.fn + 1
  --  ,trim('"' from trim( ':' from regexp_substr(rec,'"[^"]+?":',1,fn + 1) )) f_name
    ,trim('"' from trim( ':' from regexp_substr(rec,':"[^"]+?"',1,fn + 1) ))  f_value
  from
    fields          f
    ,seperate_rows  s
  where
    f.rn = s.rn
    and trim('"' from trim( ':' from regexp_substr(rec,'"[^"]+?":',1,fn + 1) )) is not null
  )
select
  *
from
  fields
  pivot (max(f_value) for fn in (1 POSTCODE, 2 OUTLETCODE, 3 MOBILENUMBER, 4 CREATEDAT, 5 UPDATEDAT))
;


/*
  APEX SCHEMA VIEWS/ QUERIES
  --------------------------------------------------------------------------------
*/

SELECT apex_view_name
FROM apex_dictionary
WHERE apex_view_name like '%'||'&1'||'%';



/*
  check authorisation role
  --------------------------------------------------------------------------------
*/

  SELECT authorization_scheme_name, attribute_01 role_name
      FROM  apex_application_authorization
      WHERE scheme_type_code = 'PLUGIN_COM.SAGE.ROLE-AUTH'

IF apex_authorization.is_authorized(r_rec.authorization_scheme_name) then

IF  APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION(r_rec.authorization_scheme_name) THEN


/*
  apex_util.prepare_url
  ---------------------------------------------------------------------------------
*/

apex_util.prepare_url('f?p='||:APP_ID||':40:'||:APP_SESSION||':::40:P40_ID:'||i.id) lnk


apex_escape.html(



/*
  -----------------------------------------------------------------------------
  APEX Performance and Monitoring
  -----------------------------------------------------------------------------
*/

-- apex_workspace_activity_log | time to load
SELECT  application_id, 
          page_id,  
          COUNT (*) AS  hits, 
          COUNT (*) / 60  AS  hits_pro_min, 
          MIN (elapsed_time)  AS  MIN,  
          AVG (elapsed_time)  AS  AVG,  
          MAX (elapsed_time)  AS  MAX,  
          AVG (elapsed_time)  * COUNT (*) weight  
FROM  apex_workspace_activity_log 
WHERE view_date > SYSDATE - 1 / 24  / 60  * 60              /*  1 hour  */  
GROUP BY  application_id, page_id 
ORDER BY    AVG (elapsed_time)  * COUNT (*) /*  weight  */  desc  ;

-- apex_workspace_activity_log | errors 
select apex_user
      ,application_id
      ,application_name
      ,page_id
      ,error_message
      ,error_on_component_type
      ,error_on_component_name
      ,view_date
      ,application_schema_owner
      ,page_name
      ,apex_session_id
from apex_workspace_activity_log
where error_message is not null
order by view_date desc;


-- u-color
-- use ora_hash to generate a number for a icon color

,'u-color-'||ora_hash(value,45) icon_modifier