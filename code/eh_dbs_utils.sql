
-- REFRESH A MV
BEGIN 
  DBMS_SNAPSHOT.REFRESH( 'APX_APPLICATION_PAGES','C'); 
END;



-- in dev to test
select * from apx_privileges@prod2test;
insert into apx_privileges@prod2test (id, priv_key, app_id, task, category, notes)
select id, priv_key, app_id, task, category, notes
from apx_privileges;
insert into apx_bus_privs@prod2test (priv_key, br_key, created_date, created_by)
select priv_key, br_key, created_date, created_by
from apx_bus_privs;
insert into apx_role_privs@prod2test (role_name, priv_key, created_date, created_by)
select role_name, priv_key, created_date, created_by
from apx_role_privs;

-- in prod from test
insert into apx_privileges (id, priv_key, app_id, task, category, notes)
select id, priv_key, app_id, task, category, notes
from apx_privileges@prod2test;
…

/* 
   CLOB/BLOB functions
  -------------------------------------------------------------------------------
*/

    debug('clobbase642blob');
    dbms_lob.createtemporary(blob_temp,false);
    
    dbms_lob.converttoblob
      (dest_lob    => blob_temp
      ,src_clob    => clob_source
      ,amount      => DBMS_LOB.LOBMAXSIZE
      ,dest_offset => dest_offset
      ,src_offset  => src_offset
      ,blob_csid   => blob_csid
      ,lang_context => lang_ctx
      ,warning     => warning
      );

    dbms_lob.copy
      (dest_lob   => l_blob
      ,src_lob    => blob_temp
      ,amount     => dbms_lob.getlength(blob_temp)
      ,src_offset => dbms_lob.instr(blob_temp,',',1,1)+1
      );

      -- INSERT l_blob INTO BLOB Column



/****************************************************************************
  Functions to manipulate SYS_CONTEXT 
*****************************************************************************/

-- set
apx_cons_util.set_parameter('JOB_NO','1414001')

-- get
where job_no = sys_context('CTX_CONS','JOB_NO')


------------------------------------------------------------------------
PROCEDURE set_parameter
  (p_attribute  VARCHAR2
  ,p_value      VARCHAR2) IS
BEGIN
  debug('Set '||p_attribute||'='||p_value, p_level => 2);
  DBMS_SESSION.set_context
    (namespace => 'CTX_CONS'
    ,attribute => p_attribute
    ,value     => p_value
    ,client_id => SYS_CONTEXT('USERENV','CLIENT_IDENTIFIER'));



/*
  dbms_scheduler views ( dba_scheduler_jobs - dba_scheduler_job_log - dba_scheduler_job_run_details )
  -------------------------------------------------------------------------------
*/

select * 
from dictionary 
where table_name like '%SCHEDULER%';

select * 
from dba_scheduler_jobs;

select log_id, log_date, owner, job_name, status, error#, run_duration, additional_info 
from dba_scheduler_job_run_details 
where status = 'SUCCEEDED' -- 'FAILED'
order by log_date desc;

select *
from dba_scheduler_job_log 
where job_name like 'IMAGE/_' escape '/';


-------------------------------------------------------------------------------
-- ALL_OBJECTS invalid
--
select *
 --unique status 
from all_objects 
where status = 'INVALID'
and owner = :OWNER;