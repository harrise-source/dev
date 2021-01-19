/*
  APEX Performance - PAGE 110:23 
  --------------------------------------------------------------------------------------------------
*/
select null lnk
  ,to_char(view_date) dd
  ,round(avg(elapsed_time),2) "Avg time"
  ,round(avg(avg(elapsed_time)) over (order by to_char(view_date,'yymmdd') desc rows between 3 preceding and 3 following),2) "6 day moving avg"
from activity_log where 1=1
and view_date > coalesce(to_date(:P23_SINCE),sysdate-7)
and application_id = coalesce(nullif(to_number(:P23_APP_ID),0), application_id)
and page_id = coalesce(to_number(:P23_PAGE_ID), page_id)
and apex_user != 'nobody'
and ((application_id = 105 and page_id in (50,70) and rows_queried > 0) or not (application_id = 105 and pagE_id in (50,70)))
group by to_char(view_date), to_char(view_date,'yymmdd')
order by to_char(view_date,'yymmdd')

/*
  I’ve been ignoring records with zero rows queried in an attempt to ignore the events from metadata logs (app process APX_VISIT)
*/

select to_char(round(avg(elapsed_time),1),'990.0') time, count(*) cnt, trunc(view_date,'hh24') view_date 
from apeX_workspace_activity_log-- activity_log
where application_id = 105 and page_id = 50
--and apeX_user = 'WESLEYS'
--and elapsed_time > 0.2
and rows_queried > 0
and view_date > trunc(sysdate) --- - 1/24
group by trunc(view_date,'hh24')
order by view_date desc


select * 
from apx_activity_log
where application_id = 105
and view_date > trunc(sysdate)
;

/*
  apex_workspace_activity_log
  ---------------------------
  Modified from 110:23 to include hours (and live table)
*/
select null lnk
  ,to_char(view_date,'dd hh24') dd
  ,round(avg(elapsed_time),2) "Avg time"
  --,round(avg(avg(elapsed_time)) over (order by to_char(trunc(view_date,'dd hh24')) desc rows between 3 preceding and 3 following),2) "6 day moving avg"
from apex_workspace_activity_log where 1=1
and view_date > trunc(sysdate)
and application_id = 105
and page_id = 50
and apex_user != 'nobody'
and ((application_id = 105 and page_id in (50,70) and rows_queried > 0) or not (application_id = 105 and pagE_id in (50,70)))
group by to_char(view_date,'dd hh24')--, to_char(trunc(view_date),'dd hh24')
order by 2
;
