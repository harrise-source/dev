/*
  The sum case bit is where it needs to be specific, so that’s what you’re measuring compared to the ‘usual’.
  ----------------------------------------
*/

select *
from (
      select null LNK
      ,to_char(view_date,'DAY') LABEL
      ,count(*) c 
      --,sum(decode
      ,application_id

        --this is where it needs to be specific, so that’s what you’re measuring compared to the ‘usual’.
        ,sum(case when apex_user='WESLEYS' and application_id = 105 then 1 else 0 end) usr 

      from apx_activity_log al
      where 1=1
      --and (application_id = :P73_APP_ID or :P73_APP_ID IS NULL)
      --AND    view_date between COALESCE(TO_DATE(:P73_DATE_FROM),TRUNC(SYSDATE)) AND trunc(COALESCE(TO_DATE(:P73_DATE_TO),SYSDATE)+1)-1/86400
      --and apex_user = 'WESLEYS'
      and view_date > sysdate-7
      group by to_char(view_date,'DAY'),1 + TRUNC (view_date)  - TRUNC (view_date, 'IW'), application_id
      order by 1 + TRUNC (view_date)  - TRUNC (view_date, 'IW')
      ) 
      pivot
      (sum(c)
        for application_id in
          (101 as Login
          ,104 as Link
          ,108 as Addenda
          ,110 as Reporting
          ,105 as Construction
          ,205 as Control)
) l;     
     
-- Simple example
select i.id
,i.first_name
,i.last_name
,c.email
,c.phone
from crm_identities i
left outer join (select identity_id
 ,email
 ,phone
from (select identity_id
       ,handle
       ,contact_type
      from crm_contacts
      ) pivot (min(handle) for contact_type in ('EMAIL' as email,'PHONE' as phone))) c 
on i.id = c.identity_id;