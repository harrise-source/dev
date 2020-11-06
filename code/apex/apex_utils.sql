-- APEX update all build options
begin
for r_rec in (
  select * 
  from APEX_APPLICATION_BUILD_OPTIONS 
  where build_option_name like 'Dev _nly'
) loop
    apex_util.set_build_option_status (
        r_rec.application_id
       ,r_rec.build_option_id
       ,'INCLUDE');
  end loop;
end;
/ 


-------------------------------------------------------------------------------
-- install app from the sqldev
--

exec apex_application_install.set_workspace(p_workspace         => 'WORKSPACE_NAME');
exec apex_application_install.set_keep_sessions(p_keep_sessions => true);
exec apex_application_install.set_schema('PARSER_NAME')

@"C:\dev\git\dev\code\apex\fXXX.sql"

