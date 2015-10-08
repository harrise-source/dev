create or replace procedure clob_from_select
is
    type t_emps is table of emp%ROWTYPE;
    v_emps    t_emps;
   
    v_clob    clob;
    v_newline varchar2(2) := chr(13)||chr(10);
begin
    -- get the rows into a PL/SQL collection of records
    select *
    bulk collect into v_emps
    from emp;
    -- build up the CLOB
    v_clob := 'EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO';
    for i in 1..v_emps.count
    loop
      v_clob := v_clob||v_newline||
                to_char(v_emps(i).empno,'fm9999')||','||
                v_emps(i).ename||','||
                v_emps(i).job||','||
                to_char(v_emps(i).mgr,'fm9999')||','||
                to_char(v_emps(i).hiredate,'YYYYMMDD')||','||
                to_char(v_emps(i).sal,'fm99999')||','||
                to_char(v_emps(i).comm,'fm99999')||','||
                to_char(v_emps(i).deptno,'fm99');
    end loop;
    -- write the CLOB to a file
    DBMS_XSLPROCESSOR.clob2file(cl => v_clob, flocation => 'TEST_DIR', fname => 'myfile.csv');
end;