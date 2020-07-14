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