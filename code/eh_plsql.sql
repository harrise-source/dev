/****************************************************************************
  START OF FILE
*****************************************************************************/

/*
  Associate Array into TABLE 
  -------------------------------------------------------------------------------
  Access to Global Variables
*/

  TYPE t_crm_attributes IS TABLE OF crm_attributes%ROWTYPE INDEX BY BINARY_INTEGER; 

  p_attributes t_crm_attributes;

  IF p_attributes.COUNT > 0 THEN
       FORALL i IN 1..p_attributes.COUNT
         INSERT INTO crm_attributes
           (identity_id
           ,name
           ,value)
         VALUES
           (l_new_identities(1)
           ,p_attributes(i).name
           ,p_attributes(i).value);
       debug(SQL%ROWCOUNT||' attributes inserted');
   END IF;

 
/*
  HTP to create an HTML Table
  -------------------------------------------------------------------------------
*/

htp.br;
htp.tableopen(cattributes=>'style="width: 300px;font-style:italic;"');
htp.tablerowopen;
htp.tabledata(v('P51_START_DATE'));
htp.tabledata(v('P51_END_DATE'), cattributes=>'style="text-align: right;"');
htp.tablerowclose;
htp.tableclose;


  WITH roles as (select column_value rname from table(string_to_sql_table(p_role_list, p_delimiter)))
      ,pages as (select p_app_id app_id, column_value page_id from table(string_to_sql_table(p_page_list, p_delimiter)))
  SELECT rname, app_id,  page_id
  from   roles, pages


/*
  apex_application_global.vc_arr2 || apex_t_varchar2
  -------------------------------------------------------------------------------
*/

l_array apex_application_global.vc_arr2;

l_array := apex_util.string_to_table(p_string => 'A:S:T:Q', p_separator => ':');

-- can either add to collection
apex_collection.create_or_truncate_collection('COLLECTION_NAME');
apex_collection.add_members(p_collection_name => ''
                           ,p_c001            => l_array);

-- or maybe loop through
for i in l_array.first to l_array.last loop
-- for i in 1 .. l_array.count lopp
  htp.p(l_array(i));
end loop;


/* 
  apex_collection - query 
  -------------------------------------------------------------------------------
*/

select *
from apex_collections
where collection_name = 'COLLECTION_NAME';


/*
  with function (12c)
  -------------------------------------------------------------------------------
*/
create or replace package pkg
is
   c_year_number constant integer := 2013;
end;
/

with
  function year_number
  return integer 
  is
  begin 
    return pkg.c_year_number;
  end;
select  c_year_number
   from employees
   where employee_id = 138
/

2013


/****************************************************************************
  END OF FILE
*****************************************************************************/


