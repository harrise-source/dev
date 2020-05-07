



-- apex_util.prepare_url

,apex_util.prepare_url('f?p='||:APP_ID||':40:'||:APP_SESSION||':::40:P40_ID:'||client_id) lnk
    
'<a href="'||
  apex_util.prepare_url( p_url => 'f?p='||:APP_ID||':20:'||:APP_SESSION||':TIMELINE::20:P20_REQUEST_ID
    ,P0_RETURN_APP
    ,P0_RETURN_PAGE
    ,P0_RETURN_DESC
    ,P0_RETURN_ICON:'||
    TO_CHAR(wre.id)||'
    ,'||:APP_ID||'
    ,'||:APP_PAGE_ID||'
    ,'||'Find Request'||'
    ,'||'fa-search'
    ,p_checksum_type => 'SESSION')||
    '" class="t-Button t-Button--large t-Button--warning t-Button--simple t-Button--stretch" title="View Request Timeline"><span class="fa fa-gantt-chart"></span></a>'           timeline_link 

    

nv('') 
--short hand for 
APEX_UTIL.GET_NUMERIC_SESSION_STATE
