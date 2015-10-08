/*
	P0 Menu Query
*/

SELECT lvl, label, target, is_current_list_entry
  ,image, image_attribute, image_alt_attribute, attribute01, attribute02, attribute03
FROM apx_cons_side_menu

/* 

	Callups | CONSTRHDR | STAGE_POINTS

*/

SELECT *
FROM CALLUP_BLOCKS
WHERE call_id =
  (SELECT callup_lists.ID FROM callup_lists WHERE CONPROF_ID = 41
  )
ORDER BY order_seq;

SELECT * FROM CALLUP_ITEMS WHERE CALB_ID = 24620 ORDER BY order_seq;

SELECT *
FROM CONSTRHDR
WHERE sales_office = 'V'
AND CONSTR_TYPE    = '1'
AND constr_method  = 'DB'
ORDER BY id;

SELECT * FROM STAGE_POINTS WHERE CONPROF_ID = 21 ORDER BY stage_seq;

select * from callup_items where CALB_ID IN ( SELECT callup_blocks.ID FROM callup_blocks WHERE CALL_ID = 23621) order by order_seq;

select * from CONS_CALLUP_VW where call_id = 23621  order by calb_order_seq, order_seq;

select * from JOB_CALLUP_ITEMS;

