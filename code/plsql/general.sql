for _rec  in (select $[![]!] 
          from   $[![]!])
loop
  $[![]!]
end loop;



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