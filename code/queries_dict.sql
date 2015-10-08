
-- Query function based indexes
select * from ALL_IND_EXPRESSIONS;


/*
  Get the sys permissions for a grantee based obtained from his roles
  ---------------
*/

select  * 
from dba_sys_privs
where 1=1
--privilege like 'CREATE%TABLE'
--and grantee='DEVMGR'
--where 
and grantee in (select granted_role
                from dba_role_privs 
                where grantee = 'DEVMGR')
;