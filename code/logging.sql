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
           ,apex_application.g_user -- v('APP_USER')
           ,p_src
           ,apex_application.g_flow_step_id--v('APP_PAGE_ID')
           ,apex_application.g_flow_id);

    IF p_commit THEN
      COMMIT;
    END IF;
  END IF;
END debug;



/****************************************************************************
	 CONSTRUCTION
*****************************************************************************/

-- Direct from Apex schema
select * 
from apex_workspace_activity_log

-- tablet/desktop, orientation, location etc.
select * 
from apx_visits
where app_id = 105
and app_user = 'BANASIAKA'
and date_logged > sysdate-3
order by date_logged desc;

-- debug_log
select * 
from debug_log
where app_id = 105
and username = 'BANASIAKA'
and ts > sysdate-3
order by ts desc;

  



