select -- Link to home page 
  1         lvl 
  ,page_name  label 
  ,'f?p='|| :APP_ID||':'||page_id||':'|| :APP_SESSION||'::'||:DEBUG target 
  ,null  is_current_list_entrya 
  ,null  image 
  ,null  image_attributea 
  ,null  image_alt_attribute 
  ,page_alias order1 
from apex_application_pages ap 
where application_id =  :APP_ID 
and page_alias = 'HOME' 
