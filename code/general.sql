--------------------------------------------------------------------------------
-- GENERAL SQL STATEMENTS AND TECHNIQUES
-- https://docs.oracle.com/database/121/SQLRF/toc.htm
--------------------------------------------------------------------------------

for _rec  in (select $[![]!] 
          from   $[![]!])
loop
  $[![]!]
end loop;


-- nvl2  (null test)
--  when expr1 not null then expr2 else expr3

nvl2(expr1,expr2, epxr3)

case 
  when expr1 is not null then expr2 
 else expr3 
end

-- nullif (equality test)
-- if equal then null

nullif(expr1, expr2)

CASE 
 WHEN expr1 = expr 2 THEN NULL  --when equal then null
 ELSE expr1 
END




-- https://oracle-base.com/articles/misc/efficient-sql-statements
--


SELECT COUNT(*)
INTO   v_count
FROM   dual
WHERE  EXISTS (SELECT 1
               FROM items
               WHERE item_size = 'SMALL');

IF v_count = 0 THEN
  -- Do processing related to no small items present
END IF;

--DML
--

insert into table (column)
values (values);


--------------------------------------------------------------------------------
-- ORDER BY

ORDER BY col NULLS FIRST DESC | ASC