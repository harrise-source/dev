--  START OF FILE


/****************************************************************************
  COLLECIONS
  ---------------------------------------------------------------------------
*****************************************************************************/

/*
  Collection Methods 
  ---------------------------------------------------------------------------
  ** A variety of methods exist for collections, but not all are relevant for every collection type.

    EXISTS(n) - Returns TRUE if the specified element exists.
    COUNT - Returns the number of elements in the collection.
    LIMIT - Returns the maximum number of elements for a VARRAY, or NULL for nested tables.
    FIRST - Returns the index of the first element in the collection.
    LAST - Returns the index of the last element in the collection.
    PRIOR(n) - Returns the index of the element prior to the specified element.
    NEXT(n) - Returns the index of the next element after the specified element.
    EXTEND - Appends a single null element to the collection.
    EXTEND(n) - Appends n null elements to the collection.
    EXTEND(n1,n2) - Appends n1 copies of the n2th element to the collection.
    TRIM - Removes a single element from the end of the collection.
    TRIM(n) - Removes n elements from the end of the collection.
    DELETE - Removes all elements from the collection.
    DELETE(n) - Removes element n from the collection.
    DELETE(n1,n2) - Removes all elements from n1 to n2 from the collection.
*/

/*
  TYPE IS RECORD
  -------------------------------------------------------------------------------
*/

SET SERVEROUTPUT ON

-- Collection of records.
DECLARE
  
  TYPE t_row IS RECORD (
    id  NUMBER,
    description VARCHAR2(50)
  );

  TYPE t_tab IS TABLE OF t_row;
  l_tab t_tab := t_tab();
BEGIN
  FOR i IN 1 .. 10 LOOP
    l_tab.extend();
    l_tab(l_tab.last).id := i;
    l_tab(l_tab.last).description := 'Description for ' || i;
  END LOOP;
END;
/

/*
  Associate Array (INDEXED BY)
  -------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  TYPE table_type IS TABLE OF NUMBER(10)
    INDEX BY BINARY_INTEGER;
  
  v_tab  table_type;
  v_idx  NUMBER;
BEGIN
  -- Initialise the collection.
  << load_loop >>
  FOR i IN 1 .. 5 LOOP
    v_tab(i) := i;
  END LOOP load_loop;
  
  -- Delete the third item of the collection.
  v_tab.DELETE(3);
  
  -- Traverse sparse collection
  v_idx := v_tab.FIRST;
  << display_loop >>
  WHILE v_idx IS NOT NULL LOOP
    DBMS_OUTPUT.PUT_LINE('The number ' || v_tab(v_idx));
    v_idx := v_tab.NEXT(v_idx);
  END LOOP display_loop;
END;
/


/*
  VARRAY  (SET SIZE)
  -------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  TYPE table_type IS VARRAY(5) OF NUMBER(10);
  v_tab  table_type;
  v_idx  NUMBER;
BEGIN
  -- Initialise the collection with two values.
  v_tab := table_type(1, 2);

  -- Extend the collection with extra values.
  << load_loop >>
  FOR i IN 3 .. 5 LOOP
    v_tab.extend;
    v_tab(v_tab.last) := i;
  END LOOP load_loop;
  
  -- Can't delete from a VARRAY.
  -- v_tab.DELETE(3);

  -- Traverse collection
  v_idx := v_tab.FIRST;
  << display_loop >>
  WHILE v_idx IS NOT NULL LOOP
    DBMS_OUTPUT.PUT_LINE('The number ' || v_tab(v_idx));
    v_idx := v_tab.NEXT(v_idx);
  END LOOP display_loop;
END;
/


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
  apex_application_global.vc_arr2 || apex_t_varchar2 ARRAY
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
  WITH function (12c)
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


/*
  UTILITY
  -----------------------------------------------------------------------------
*/

--hide compile warnings in sqldev
ALTER SESSION SET PLSQL_WARNINGS='DISABLE:ALL';


--  END OF FILE