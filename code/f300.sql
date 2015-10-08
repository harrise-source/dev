set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.31'
,p_default_workspace_id=>2216723768141527
,p_default_application_id=>300
,p_default_owner=>'DEV'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 300 - myHome
--
-- Application Export:
--   Application:     300
--   Name:            myHome
--   Date and Time:   21:02 Wednesday May 27, 2015
--   Exported By:     HARRISE
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.31
--   Instance ID:     61914838608236
--

-- Application Statistics:
--   Pages:                      8
--     Items:                    3
--     Processes:                5
--     Regions:                 11
--     Buttons:                  3
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--       Items:                  1
--       Processes:              2
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 3
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 2
--       Templates:
--         Page:                36
--         Region:              54
--         Label:               13
--         List:                33
--         Popup LOV:            2
--         Calendar:             4
--         Breadcrumb:           3
--         Button:              17
--         Report:              22
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,300)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'myHome')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MH')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'AB7D52CEC5F6ACA379006972D5BD1FE274E228E0A66A1C2148F07B90A651BF0B'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(2751531284136673)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Welcome to &APP_TITLE.'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'Version 1.0 BETA'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_TITLE'
,p_substitution_value_01=>'myHome'
,p_substitution_string_02=>'COMPANY_TITLE'
,p_substitution_value_02=>'DemoBuilder'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140715202408'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
null;
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(111967253413142)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(2738425927128926)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(2839224418187185)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'6'
,p_attribute_02=>'.5'
,p_attribute_03=>'Y'
,p_attribute_04=>'none'
,p_attribute_05=>'100'
,p_attribute_06=>'300'
,p_attribute_07=>'Y'
,p_attribute_08=>'#PLUGIN_PREFIX#plugins/modal-page/server/'
,p_attribute_09=>'TEST'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(2749402935128944)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(2822025921629464)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ap_json_test'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- AP_JSON_TEST',
'DECLARE',
'  v_sql VARCHAR2 (4000);',
'BEGIN',
'  -- Note: This query is meant to return no rows',
'  v_sql := ''SELECT sysdate FROM dual WHERE 1 = 1'';',
'   ',
'  -- Print JSON result set',
'  apex_util.json_from_sql (v_sql);',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(2754400556499181)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'app_init'
,p_process_sql_clob=>'myhome_ctrl.pr_init;'
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(2754009676418980)
,p_name=>'F_JOB_NO'
,p_protection_level=>'S'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2750905647128951)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2824312047622749)
,p_tab_set=>'TS1'
,p_tab_sequence=>15
,p_tab_name=>'T_HOMEDETAILS'
,p_tab_text=>'Home Details'
,p_tab_step=>10
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2821129899593334)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'Support'
,p_tab_text=>'Support'
,p_tab_step=>50
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(2750612372128950)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2751032644128951)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2738512735128927)
,p_theme_id=>26
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uLoginContainer">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="$x_Remove(''uNotificationMessage'')"></a>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2738605811128928)
,p_theme_id=>26
,p_name=>'Minimal Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer" class="minimalPage">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#TITLE#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2738722764128929)
,p_theme_id=>26
,p_name=>'No Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2738806992128929)
,p_theme_id=>26
,p_name=>'No Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2738925238128929)
,p_theme_id=>26
,p_name=>'No Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739017126128929)
,p_theme_id=>26
,p_name=>'No Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739120955128929)
,p_theme_id=>26
,p_name=>'One Level Tabs - Content Frame'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'		#REGION_POSITION_02#',
'    </span>',
'  </div>',
'  <div class="uFrameContent">',
'	<div class="uFrameMain">',
'		#BODY#',
'	</div>',
'	<div class="uFrameSide">',
'		#REGION_POSITION_03#',
'	</div>',
'  </div>',
'</section>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739201857128929)
,p_theme_id=>26
,p_name=>'One Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739328824128930)
,p_theme_id=>26
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739421790128930)
,p_theme_id=>26
,p_name=>'One Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739503469128930)
,p_theme_id=>26
,p_name=>'One Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739627064128930)
,p_theme_id=>26
,p_name=>'One Level Tabs - Search Filter Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="body" class="uSearchContainer">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary=""  width="100%">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="vertical-align:top">',
'          <div class="ebaSearchFilterBar">#REGION_POSITION_02#</div>',
'        </td>',
'        <td class="tbl-main">#BODY##REGION_POSITION_03#</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739707204128930)
,p_theme_id=>26
,p_name=>'One Level Tabs - Wizard Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'',
'<div class="cWizard">',
'	<div class="cWizardHeader">',
'		#REGION_POSITION_02#',
'	</div>',
'    <div class="cWizardContentContainer">',
'    <div class="cWizardContent">',
'        #BODY##REGION_POSITION_03#',
'    </div>',
'    <div class="clear"></div>',
'</div>',
'',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739807966128930)
,p_theme_id=>26
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2739929571128930)
,p_theme_id=>26
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPrinterFriendly">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2740014301128930)
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2740109658128931)
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2740232416128931)
,p_theme_id=>26
,p_name=>'Two Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2740302340128931)
,p_theme_id=>26
,p_name=>'Two Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2756602120088267)
,p_theme_id=>25
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      <div id="uLoginContainer">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="apex.jQuery(''#uNotificationMessage'').remove();"></a>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2756900451088269)
,p_page_template_id=>wwv_flow_api.id(2756602120088267)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2757230392088269)
,p_theme_id=>25
,p_name=>'No Tabs - Left Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #REGION_POSITION_05#',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'      <div class="uFooterBG">',
'        <div class="uLeft"></div>',
'        <div class="uRight"></div>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2757603368088269)
,p_page_template_id=>wwv_flow_api.id(2757230392088269)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2758010608088269)
,p_page_template_id=>wwv_flow_api.id(2757230392088269)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2758422879088269)
,p_page_template_id=>wwv_flow_api.id(2757230392088269)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2758823901088269)
,p_page_template_id=>wwv_flow_api.id(2757230392088269)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2759201142088270)
,p_page_template_id=>wwv_flow_api.id(2757230392088269)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2759515816088270)
,p_theme_id=>25
,p_name=>'No Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2759906831088270)
,p_page_template_id=>wwv_flow_api.id(2759515816088270)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2760313674088270)
,p_page_template_id=>wwv_flow_api.id(2759515816088270)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2760710961088270)
,p_page_template_id=>wwv_flow_api.id(2759515816088270)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2761125311088270)
,p_page_template_id=>wwv_flow_api.id(2759515816088270)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2761510646088270)
,p_page_template_id=>wwv_flow_api.id(2759515816088270)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2761914612088270)
,p_page_template_id=>wwv_flow_api.id(2759515816088270)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITOIN_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2762230107088270)
,p_theme_id=>25
,p_name=>'No Tabs - No Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2762618529088270)
,p_page_template_id=>wwv_flow_api.id(2762230107088270)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2763027114088270)
,p_page_template_id=>wwv_flow_api.id(2762230107088270)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2763419806088271)
,p_page_template_id=>wwv_flow_api.id(2762230107088270)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2763819982088271)
,p_page_template_id=>wwv_flow_api.id(2762230107088270)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2764102095088271)
,p_theme_id=>25
,p_name=>'No Tabs - Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2764527851088271)
,p_page_template_id=>wwv_flow_api.id(2764102095088271)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2764901356088271)
,p_page_template_id=>wwv_flow_api.id(2764102095088271)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2765323888088271)
,p_page_template_id=>wwv_flow_api.id(2764102095088271)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2765730138088271)
,p_page_template_id=>wwv_flow_api.id(2764102095088271)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2766103686088271)
,p_page_template_id=>wwv_flow_api.id(2764102095088271)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2766428893088271)
,p_theme_id=>25
,p_name=>'One Level Tabs - Content Frame'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'initContentFrameTabs();'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'      <div class="uRegionHeading">',
'        <h1>#TITLE#</h1>',
'        <span class="uButtonContainer">',
'        #REGION_POSITION_02#',
'        </span>',
'      </div>',
'      <div class="uFrameContent">',
'        <div class="uFrameMain">',
'            #BODY#',
'        </div>',
'        <div class="uFrameSide">',
'          <div class="apex_cols apex_span_2 alpha omega">',
'            #REGION_POSITION_03#',
'          </div>',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_sidebar_def_reg_pos=>'BODY_3'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>10
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2766817535088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2767231453088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2767625103088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Content Frame Buttons'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2768025883088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2768412224088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2768828800088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2769225836088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2769607220088272)
,p_page_template_id=>wwv_flow_api.id(2766428893088271)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2769931961088272)
,p_theme_id=>25
,p_name=>'One Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2770323629088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2770706661088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2771107712088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2771518556088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2771913841088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2772320369088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2772723870088273)
,p_page_template_id=>wwv_flow_api.id(2769931961088272)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2773006522088273)
,p_theme_id=>25
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2773405977088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2773804228088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2774224896088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2774631198088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2775007205088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2775417661088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2775803677088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2776205494088274)
,p_page_template_id=>wwv_flow_api.id(2773006522088273)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITON_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2776527562088274)
,p_theme_id=>25
,p_name=>'One Level Tabs - No Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2776913775088274)
,p_page_template_id=>wwv_flow_api.id(2776527562088274)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2777305373088274)
,p_page_template_id=>wwv_flow_api.id(2776527562088274)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2777710998088275)
,p_page_template_id=>wwv_flow_api.id(2776527562088274)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2778108130088275)
,p_page_template_id=>wwv_flow_api.id(2776527562088274)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2778505163088275)
,p_page_template_id=>wwv_flow_api.id(2776527562088274)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2778904983088275)
,p_page_template_id=>wwv_flow_api.id(2776527562088274)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2779210703088275)
,p_theme_id=>25
,p_name=>'One Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'// show / hide grid',
'function showGrid() {',
'  apex.jQuery(''.apex_grid_container'').addClass(''showGrid'');',
'};',
'function hideGrid() {',
'  apex.jQuery(''.apex_grid_container'').removeClass(''showGrid'');',
'};',
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2779601812088275)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2780021118088275)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2780402798088275)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2780825009088275)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2781226191088275)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2781620624088276)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2782005328088276)
,p_page_template_id=>wwv_flow_api.id(2779210703088275)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2782331526088276)
,p_theme_id=>25
,p_name=>'One Level Tabs - Wizard Page'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'loadWizardTrain();'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div class="cWizard">',
'      <div class="cWizardHeader">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="cWizardContentContainer">',
'        <div class="cWizardContent">',
'            #BODY#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #REGION_POSITION_05#',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2782711478088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Wizard Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>11
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2783101154088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2783527983088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Wizard Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2783900386088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2784327297088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2784703789088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2785101887088276)
,p_page_template_id=>wwv_flow_api.id(2782331526088276)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2785424530088276)
,p_theme_id=>25
,p_name=>'Popup'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# id="uPopup">',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2785813334088277)
,p_page_template_id=>wwv_flow_api.id(2785424530088276)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2786118073088277)
,p_theme_id=>25
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# class="printerFriendly">',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>5
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2786527612088277)
,p_page_template_id=>wwv_flow_api.id(2786118073088277)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2786930193088277)
,p_page_template_id=>wwv_flow_api.id(2786118073088277)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2787321702088277)
,p_page_template_id=>wwv_flow_api.id(2786118073088277)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2787719250088277)
,p_page_template_id=>wwv_flow_api.id(2786118073088277)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2788013898088277)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2788410485088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2788811971088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2789224053088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2789632387088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2790000868088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2790410781088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2790827784088278)
,p_page_template_id=>wwv_flow_api.id(2788013898088277)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2791116915088278)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2791524040088278)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2791910688088278)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2792316394088278)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2792704478088279)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2793119647088279)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2793531538088279)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2793920249088279)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2794324308088279)
,p_page_template_id=>wwv_flow_api.id(2791116915088278)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITON_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2794628646088279)
,p_theme_id=>25
,p_name=>'Two Level Tabs - No Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2795011587088279)
,p_page_template_id=>wwv_flow_api.id(2794628646088279)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2795430958088279)
,p_page_template_id=>wwv_flow_api.id(2794628646088279)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2795811530088279)
,p_page_template_id=>wwv_flow_api.id(2794628646088279)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2796230285088279)
,p_page_template_id=>wwv_flow_api.id(2794628646088279)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2796615083088279)
,p_page_template_id=>wwv_flow_api.id(2794628646088279)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2797030147088279)
,p_page_template_id=>wwv_flow_api.id(2794628646088279)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2797304040088279)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2797716995088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2798113615088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2798523369088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2798931938088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2799302587088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2799707941088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2800104183088280)
,p_page_template_id=>wwv_flow_api.id(2797304040088279)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(115885257413206)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2747613099128936)
,p_template_name=>'Button'
,p_template=>'<a href="#LINK#" class="uButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButton uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2747711085128937)
,p_template_name=>'Interactive Report Button'
,p_template=>'<a href="#LINK#" class="uButtonIR #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2747806122128937)
,p_template_name=>'Interactive Report Button (Next)'
,p_template=>'<a href="#LINK#" class="uButtonIR nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2747901404128937)
,p_template_name=>'Large Button'
,p_template=>'<a href="#LINK#" class="uButtonLarge #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2748031898128937)
,p_template_name=>'Large Button (Next)'
,p_template=>'<a href="#LINK#" class="uButtonLarge nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2748123287128937)
,p_template_name=>'Large Button (Previous)'
,p_template=>'<a href="#LINK#" class="uButtonLarge prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge utHotButton prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2748209411128937)
,p_template_name=>'Small Button'
,p_template=>'<a href="#LINK#" class="uButtonSmall #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonSmall uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2748322891128937)
,p_template_name=>'[ + ] Add Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#"  class="addIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2748403753128937)
,p_template_name=>'[ > ] Go To Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2748531116128937)
,p_template_name=>'[ Text ] Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2815607946088287)
,p_template_name=>'Button'
,p_template=>'<button class="uButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_hot_template=>'<button class="uButton uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2815800010088288)
,p_template_name=>'Button - Icon'
,p_template=>'<button class="uButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_hot_template=>'<button class="uButton uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>6
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2816006089088288)
,p_template_name=>'Button - Icon Only'
,p_template=>'<button class="uButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_hot_template=>'<button class="uButton uHotButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>7
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2816205416088288)
,p_template_name=>'Large Button'
,p_template=>'<button class="uButtonLarge #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2816417725088288)
,p_template_name=>'Large Button - Icon'
,p_template=>'<button class="uButtonLarge iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2816601860088288)
,p_template_name=>'Large Button - Icon Only'
,p_template=>'<button class="uButtonLarge iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>8
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2740428879128931)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#BUTTON_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2740525942128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2740615201128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2740704661128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    #BODY#',
'</section>'))
,p_page_plug_template_name=>'Borderless Region (no heading)'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2740808015128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBracketedRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>26
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2740902824128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBreadcrumbs" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  #BODY#',
'  <div class="uBreadcrumbsBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>26
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741028528128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>26
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741120636128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>26
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741221420128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741317623128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741426041128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741516214128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741608686128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741717880128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741806861128932)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2741925781128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region - Borderless'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742028742128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742127275128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding uLoginRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uLoginHeading">',
'    <span class="bgArrow"></span>',
'    <div class="appIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="appIcon #REGION_STATIC_ID#" alt=""/>',
'    </div> ',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uLoginBody clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742219444128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Modal Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742306111128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>26
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742408630128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region - Heading Inside'
,p_theme_id=>26
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742530326128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix">',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>26
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742616501128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>26
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742721892128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion uNoHeading uReportFilter #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    <div class="uReportFilterRow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uSearchIcon" alt="" />',
'    #BODY#',
'    </div>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>26
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742826876128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2742909989128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743014628128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743132735128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - Heading Inside'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743220421128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix"  style="height: 400px; overflow:scroll">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Scrollable Content Region'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1826089610826571714
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743306048128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uFilterRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Search Filter Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743412845128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743509712128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region - Heading Inside'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743615888128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743713070128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>26
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743825377128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>26
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2743911767128933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" style="display:none" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'jQuery Modal Region Template'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2800406065088280)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_theme_id=>25
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2800717866088281)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2801031848088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>25
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2801318765088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div class="uBreadcrumbs">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>25
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#',
'',
'',
'',
'<div id="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div id="uBreadcrumbs">',
'      #BODY#',
'      <div class="uBreadcrumbsBG">',
'        <div class="uLeft"></div>',
'        <div class="uRight"></div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2801608489088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>25
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2801928814088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>25
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2802228968088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_theme_id=>25
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2802528694088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>25
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2802827027088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>25
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2803213174088282)
,p_plug_template_id=>wwv_flow_api.id(2802827027088282)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2803518142088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Expanded)'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2803810670088282)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden)'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2804130550088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_theme_id=>25
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2804404524088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container modal_grid">',
'  <div class="apex_cols apex_span_8 modal_col">',
'    <section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'      <div class="uRegionHeading">',
'        <h1>#TITLE#</h1>',
'      </div>',
'      <div class="uRegionContent clearfix">',
'        #BODY#',
'      </div>',
'        <span class="uButtonContainer">',
'          #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </span>',
'    </section>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Modal Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2804814560088283)
,p_plug_template_id=>wwv_flow_api.id(2804404524088283)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2805131527088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>25
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2805426890088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>25
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2805719500088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Standard Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2806118922088283)
,p_plug_template_id=>wwv_flow_api.id(2805719500088283)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(2806530660088283)
,p_plug_template_id=>wwv_flow_api.id(2805719500088283)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2806806374088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Standard Region - No Padding'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2807109605088283)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_theme_id=>25
,p_theme_class_id=>28
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745113410128934)
,p_list_template_current=>'<a href="#LINK#" class="uButtonSmall uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButtonSmall" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_theme_id=>26
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745223751128935)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>26
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745300757128935)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745407083128935)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>26
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745518654128935)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>26
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745628024128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>26
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745719497128935)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745800800128935)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav class="uPageTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2745905597128935)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>26
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#f_spacer.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746016865128935)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>26
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746109448128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Search Filter Tabs'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="ebaViewTabs">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746217722128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746301875128935)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>26
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746404912128935)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746506792128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>26
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746616278128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746705340128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746823878128935)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>26
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2746904503128935)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2810708459088285)
,p_list_template_current=>'<button onclick="javascript:location.href=''#LINK#''" class="uButton uHotButton #A01#" type="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<button onclick="javascript:location.href=''#LINK#''" class="uButton #A01#" type="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_theme_id=>25
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2811030653088286)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2811312033088286)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>25
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2811605492088286)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>25
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2811916997088286)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_theme_id=>25
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList hidden-phone">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2812221467088286)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>25
,p_theme_class_id=>7
,p_list_template_before_rows=>' '
,p_list_template_after_rows=>' '
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2812518614088286)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>25
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2812809817088286)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>25
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2813132472088286)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2813426377088286)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>25
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2813708858088286)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>25
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2814005217088286)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2814303408088286)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>25
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(2814614948088286)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_theme_id=>25
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744003551128933)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2744003551128933)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744111785128934)
,p_row_template_name=>'Comment Bubbles'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744210558128934)
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2744210558128934)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744332564128934)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2744332564128934)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744430501128934)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2744430501128934)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744518211128934)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744618435128934)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2744618435128934)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744701758128934)
,p_row_template_name=>'Standard - Alternative'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2744701758128934)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744824557128934)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2744918392128934)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2745011253128934)
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2807404589088284)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2807404589088284)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2807732593088284)
,p_row_template_name=>'Comment Bubbles'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2808021714088284)
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2808021714088284)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2808327902088284)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2808327902088284)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2808630191088284)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2808630191088284)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2808913908088284)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2809207174088284)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2809207174088284)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2809528132088284)
,p_row_template_name=>'Standard - Alternative'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(2809528132088284)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
end;
/
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2809824655088285)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2810130323088285)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(2810406658088285)
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>6
,p_translate_this_template=>'N'
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2747027798128935)
,p_template_name=>'Hidden label, read by screen reader'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2747130257128936)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2747201129128936)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2747331355128936)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2747420397128936)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired">'
,p_template_body2=>' <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2747514059128936)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2814907235088287)
,p_template_name=>'Hidden Label (Read by Screen Readers)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="visuallyhidden">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2815014877088287)
,p_template_name=>'Optional (Horizontal - Left Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2815105788088287)
,p_template_name=>'Optional (Horizontal - Right Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button"  title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2815216790088287)
,p_template_name=>'Optional (Label Above)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2815330909088287)
,p_template_name=>'Required (Horizontal - Left Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2815427818088287)
,p_template_name=>'Required (Horizontal - Right Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(2815518197088287)
,p_template_name=>'Required (Label Above)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(2748622820128937)
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> '
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(2748719663128937)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(2816830776088288)
,p_name=>'Breadcrumb Menu'
,p_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li class="uStartCap"><span></span></li>'))
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><span></span></li>'
,p_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="uEndCap"><span></span></li>',
'</ul>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(2749117679128938)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(2817016289088289)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_25/css/4_2.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="lovButton hotButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="lovButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="lovButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="lovButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(2748800222128938)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(2748925063128938)
,p_cal_template_name=>'Calendar - Alternative'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(2749026808128938)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th scope="col">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uCalendarSmall" summary="#IMONTH# #YYYY#">',
'  <caption>#IMONTH# #YYYY#</caption>'))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </tbody>',
'</table>'))
,p_day_title_format=>'#DD#'
,p_day_open_format=>'<td>#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'#DD#'
,p_weekend_open_format=>'<td class="weekend">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'#DD#'
,p_nonday_open_format=>'<td class="inactive">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>3
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(2816914351088288)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th id="#DY#" scope="col" class="uCalDayCol">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_day_open_format=>'<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="uDay today" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_weekend_open_format=>'<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="aCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_weekly_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_weekly_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="uCalHour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="aCalDayCol">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly uCalDaily">',
'<h1 class="uMonth">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="uCal">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_daily_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_daily_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="listCalendar">',
'  <li class="monthHeader">',
'    <h1>#IMONTH# #YYYY#</h1>',
'  </li>',
'  #DAYS#',
'  <li class="listEndCap"></li>',
'</ul>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="dayHeader past">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="dayHeader today">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="dayHeader future">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="dayData past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="dayData today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="dayData future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>25
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(2749202878128940)
,p_theme_id=>26
,p_theme_name=>'Productivity Applications'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(2739421790128930)
,p_error_template=>wwv_flow_api.id(2738925238128929)
,p_printer_friendly_template=>wwv_flow_api.id(2739929571128930)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(2738512735128927)
,p_default_button_template=>wwv_flow_api.id(2747613099128936)
,p_default_region_template=>wwv_flow_api.id(2742909989128933)
,p_default_chart_template=>wwv_flow_api.id(2741317623128932)
,p_default_form_template=>wwv_flow_api.id(2741608686128932)
,p_default_reportr_template=>wwv_flow_api.id(2742909989128933)
,p_default_tabform_template=>wwv_flow_api.id(2742909989128933)
,p_default_wizard_template=>wwv_flow_api.id(2743713070128933)
,p_default_menur_template=>wwv_flow_api.id(2740902824128932)
,p_default_listr_template=>wwv_flow_api.id(2741221420128932)
,p_default_irr_template=>wwv_flow_api.id(2742028742128933)
,p_default_report_template=>wwv_flow_api.id(2744618435128934)
,p_default_label_template=>wwv_flow_api.id(2747201129128936)
,p_default_menu_template=>wwv_flow_api.id(2748622820128937)
,p_default_calendar_template=>wwv_flow_api.id(2748800222128938)
,p_default_list_template=>wwv_flow_api.id(2746705340128935)
,p_default_option_label=>wwv_flow_api.id(2747331355128936)
,p_default_required_label=>wwv_flow_api.id(2747514059128936)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(26),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(2817225401088291)
,p_theme_id=>25
,p_theme_name=>'Blue Responsive'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(2776527562088274)
,p_error_template=>wwv_flow_api.id(2762230107088270)
,p_printer_friendly_template=>wwv_flow_api.id(2786118073088277)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(2756602120088267)
,p_default_button_template=>wwv_flow_api.id(2815607946088287)
,p_default_region_template=>wwv_flow_api.id(2805719500088283)
,p_default_chart_template=>wwv_flow_api.id(2805719500088283)
,p_default_form_template=>wwv_flow_api.id(2802827027088282)
,p_default_reportr_template=>wwv_flow_api.id(2805719500088283)
,p_default_tabform_template=>wwv_flow_api.id(2805719500088283)
,p_default_wizard_template=>wwv_flow_api.id(2802827027088282)
,p_default_menur_template=>wwv_flow_api.id(2801318765088282)
,p_default_listr_template=>wwv_flow_api.id(2805719500088283)
,p_default_irr_template=>wwv_flow_api.id(2804130550088283)
,p_default_report_template=>wwv_flow_api.id(2809207174088284)
,p_default_label_template=>wwv_flow_api.id(2815105788088287)
,p_default_menu_template=>wwv_flow_api.id(2816830776088288)
,p_default_calendar_template=>wwv_flow_api.id(2816914351088288)
,p_default_list_template=>wwv_flow_api.id(2814005217088286)
,p_default_option_label=>wwv_flow_api.id(2815105788088287)
,p_default_required_label=>wwv_flow_api.id(2815427818088287)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(25),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(2749518136128945)
,p_name=>'Database Account'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(2751531284136673)
,p_name=>'Apex Account'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_skillbuilders_modal_page
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(34417118739715844292)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM_SKILLBUILDERS_MODAL_PAGE'
,p_display_name=>'SkillBuilders Modal Page (2.0.0)'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM_SKILLBUILDERS_MODAL_PAGE'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'FUNCTION apex_modal_page_render (',
'   p_dynamic_action IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'   p_plugin         IN APEX_PLUGIN.T_PLUGIN ',
')',
'',
'   RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT',
'   ',
'IS',
'',
'   l_result             APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'   l_dialog_title       VARCHAR2(4000) := p_dynamic_action.attribute_01;',
'   l_url_location       VARCHAR2(50) := NVL(p_dynamic_action.attribute_02, ''STATIC'');',
'   l_static_url         VARCHAR2(4000) := p_dynamic_action.attribute_03;',
'   l_attr_name          VARCHAR2(4000) := NVL(p_dynamic_action.attribute_05, ''data-url'');',
'   l_close_sel          VARCHAR2(4000) := NVL(p_dynamic_action.attribute_06, ''div#success-message'');',
'   l_hw_mode            VARCHAR2(4000) := NVL(p_dynamic_action.attribute_07, ''AUTO'');',
'   l_height             VARCHAR2(4000) := p_dynamic_action.attribute_08;',
'   l_width              VARCHAR2(4000) := p_dynamic_action.attribute_09;',
'   l_modal_page_id      VARCHAR2(4000) := p_dynamic_action.attribute_10;',
'   l_theme              NUMBER := NVL(p_plugin.attribute_01, 3);',
'   l_overlay_opacity    NUMBER := NVL(TO_NUMBER(p_plugin.attribute_02, ''999.99'', ''NLS_NUMERIC_CHARACTERS = ''''.,''''''), .5);',
'   l_scrolling          VARCHAR2(1) := NVL(p_plugin.attribute_03, ''N'');',
'   l_transition         VARCHAR2(50) := NVL(p_plugin.attribute_04, ''none'');',
'   l_initial_height     NUMBER := NVL(p_plugin.attribute_05, 100);',
'   l_initial_width      NUMBER := NVL(p_plugin.attribute_06, 100);',
'   l_draggable          VARCHAR2(1) := NVL(p_plugin.attribute_07, ''Y'');',
'   l_custom_css_path    VARCHAR2(4000) := p_plugin.attribute_08;',
'   l_custom_css_file    VARCHAR2(4000) := p_plugin.attribute_09;',
'   l_loading_image_src  VARCHAR2(32767);',
'   l_onload_code        VARCHAR2(32767);',
'   l_crlf               CHAR(2) := CHR(13)||CHR(10);',
'',
'BEGIN',
'',
'   IF apex_application.g_debug',
'   THEN',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin,',
'         p_dynamic_action => p_dynamic_action ',
'      );',
'   END IF;',
'   ',
'   IF l_theme = 6 --User selected custom theme',
'   THEN',
'      apex_css.add_file(',
'         p_name      => RTRIM(RTRIM(l_custom_css_file,''.css''),''.CSS''),',
'         p_directory => wwv_flow.do_substitutions(l_custom_css_path),',
'         p_version   => NULL',
'      );',
'   ELSE ',
'      apex_css.add_file(',
'         p_name      => ''t'' || l_theme || ''colorbox'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => NULL',
'      );',
'   END IF;',
'',
'   apex_javascript.add_library(',
'      p_name      => ''jquery.colorbox-min'',',
'      p_directory => p_plugin.file_prefix,',
'      p_version   => NULL',
'   );',
'   ',
'   apex_javascript.add_library(',
'      p_name      => ''apex_modal_page.min'',',
'      p_directory => p_plugin.file_prefix,',
'      p_version   => NULL ',
'   );',
'',
'   l_onload_code := ''apex.jQuery(document).apex_modal_page({'' || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''transition'',  l_transition) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''draggable'',  ',
'         CASE l_draggable',
'            WHEN ''Y'' THEN TRUE',
'            ELSE FALSE',
'         END',
'      ) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''initialHeight'',  l_initial_height) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''initialWidth'',  l_initial_width) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''overlayOpacity'',  l_overlay_opacity) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''scrolling'',  ',
'         CASE l_scrolling',
'            WHEN ''Y'' THEN TRUE',
'            ELSE FALSE',
'         END',
'      ) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''loadingImageSrc'', l_loading_image_src, FALSE, FALSE) || l_crlf',
'      || ''});'';',
'      ',
'   apex_javascript.add_onload_code(',
'      p_code => l_onload_code',
'   ); ',
'',
'   l_result.javascript_function := ',
'      ''function(){'' || l_crlf ||',
'      ''   if (this.browserEvent !== ''''load''''){'' || l_crlf ||',
'      ''      apex.jQuery(document).apex_modal_page(''''openPageFromApexThis'''', this);'' || l_crlf ||',
'      ''   }'' || l_crlf ||',
'      ''}'';',
'',
'   l_result.attribute_01 := l_dialog_title;',
'   l_result.attribute_02 := l_url_location;',
'   l_result.attribute_03 := l_static_url;',
'   l_result.attribute_05 := l_attr_name;',
'   l_result.attribute_06 := l_close_sel;',
'   l_result.attribute_07 := l_hw_mode;',
'   l_result.attribute_08 := l_height;',
'   l_result.attribute_09 := l_width;',
'   l_result.attribute_10 := l_modal_page_id;',
'',
'   RETURN l_result;',
'    ',
'END apex_modal_page_render;'))
,p_render_function=>'apex_modal_page_render'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
''))
,p_version_identifier=>'2.0.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4150549576839174)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Theme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'3'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The Theme setting is used to change the look and feel of the modal window. The ColorBox website includes 5 example themes which have been included with this plug-in. Simply select a number from 1 to 5 to use one of these themes. The themes demonstrat'
||'e the flexibility of the plug-in and can be used without making any changes. However, a custom option exists that, when selected, exposes two additional fields that allow for a custom CSS file to be defined. It is recommended that you start with an e'
||'xisting theme and make small changes to it until you are comfortable working with the CSS.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4151051654839807)
,p_plugin_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_display_sequence=>10
,p_display_value=>'1'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4151453386840270)
,p_plugin_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_display_sequence=>20
,p_display_value=>'2'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4151855463840852)
,p_plugin_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_display_sequence=>30
,p_display_value=>'3'
,p_return_value=>'3'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4152257195841357)
,p_plugin_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_display_sequence=>40
,p_display_value=>'4'
,p_return_value=>'4'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4152659619842026)
,p_plugin_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_display_sequence=>50
,p_display_value=>'5'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4153028929842654)
,p_plugin_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'6'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4153827937870416)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Overlay Opacity'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'.5'
,p_display_length=>3
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'The Overlay Opacity setting is used to adjust the darkness of the overlay behind the modal dialog. Specify a number between 0 and 1 where 0 is transparent and 1 is completely obscured. The default value of .5 is in the middle and allows the users to '
||'see the screen behind but focuses their attention on the modal dialog.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4154331316890275)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>17
,p_prompt=>'Scrolling'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'The Scrolling setting is used to specify whether or not the modal can include scroll bars across the top and bottom of the modal to allow users to see all of the content in the page. When set to No, any overflow cotent will be hidden from view.<br />'
||' ',
'<br />',
'This setting must be used in conjunction with the Height and Width settings in the component settings. A later version of this plug-in will move this setting to the component settings.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4154853133896483)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>15
,p_prompt=>'Transition'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'none'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The Transition setting can be used to apply some effects to the opening and closing of the modal dialog. '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4155356596897495)
,p_plugin_attribute_id=>wwv_flow_api.id(4154853133896483)
,p_display_sequence=>10
,p_display_value=>'None'
,p_return_value=>'none'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4155729846908606)
,p_plugin_attribute_id=>wwv_flow_api.id(4154853133896483)
,p_display_sequence=>20
,p_display_value=>'Elastic'
,p_return_value=>'elastic'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(4156134694910037)
,p_plugin_attribute_id=>wwv_flow_api.id(4154853133896483)
,p_display_sequence=>30
,p_display_value=>'Fade'
,p_return_value=>'fade'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(10299971029741790934)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Initial Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'100'
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'The Initial Height setting is used to specify the initial height (in pixels) of the modal page when it opens but before the main content loads. '
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(10299972212210795359)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Initial Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'300'
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'The Initial Width setting is used to specify the initial width (in pixels) of the modal page when it opens but before the main content loads.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4157755257925358)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>7
,p_display_sequence=>18
,p_prompt=>'Draggable'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'The Draggable setting is used to specify whether or not the user should be able to move the modal dialog around on the screen.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4158640282939828)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>8
,p_display_sequence=>12
,p_prompt=>'Custom CSS Path'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>50
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'6'
,p_help_text=>'The Custom CSS Path setting is used to specify the path to a custom CSS file for the theme. This setting is only displayed when the Theme is set to custom. See Optional Performance Upgrade for additional information.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4159149071951807)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>9
,p_display_sequence=>13
,p_prompt=>'Custom CSS Filename'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>50
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4150549576839174)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'6'
,p_help_text=>'The Custom CSS Filename setting is used to specify the name of the file that contains custom CSS for the theme. Only the name of the file should be included with this setting as it is assumed the extension will be â.cssâ. This setting is only dis'
||'played when the Theme is set to custom.  See Optional Performance Upgrade for additional information.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(27697022022599561921)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Dialog Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>'Use this attribute to specify the title displayed in the modal page.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(27697014833419546111)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'URL Location'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STATIC'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this attribute to specify whether the URL for the modal page is static or dynamic. '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(27697017115542550351)
,p_plugin_attribute_id=>wwv_flow_api.id(27697014833419546111)
,p_display_sequence=>10
,p_display_value=>'Statically Defined'
,p_return_value=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(27697018228009553972)
,p_plugin_attribute_id=>wwv_flow_api.id(27697014833419546111)
,p_display_sequence=>20
,p_display_value=>'Attribute of Triggering Element'
,p_return_value=>'TRIG_ELEMENT_ATTR'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(27697009112987540178)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Static URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'f?p=&APP_ID.:1:&APP_SESSION.:::1:::'
,p_display_length=>50
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(27697014833419546111)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'STATIC'
,p_help_text=>'Use this attribute to specify a static URL for the modal page.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35761717649126040456)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Attribute Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'href'
,p_display_length=>30
,p_max_length=>50
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(27697014833419546111)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'TRIG_ELEMENT_ATTR'
,p_help_text=>'Use this attribute to specify which attribute of the triggering element contains the URL for the modal page. This is often the href attribute of anchor elements.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35761847647591229226)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Auto-close On Element Selector'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'div#success-message'
,p_display_length=>30
,p_max_length=>500
,p_is_translatable=>false
,p_help_text=>'Use this attribute to specify a jQuery selector used to close the modal page automatically. The selector is executed when the modal page is loaded. If the selector selects anything, the modal page will close and the Auto Close event will be triggered'
||'. Typically this is only used for modal pages that are submitted for processing where the success message is used to auto-close the modal page.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(13093588131888220884)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Dialog Height/Width Mode'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'AUTO'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this attribute to control the size of the modal page. The default value of "Auto" will try to automatically determine the appropriate size of the page based on the content. However, if you need more control, this attribute allows you set the heig'
||'ht and width as a percentage of the total window size or by a fixed number of pixels.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(13093626720937227176)
,p_plugin_attribute_id=>wwv_flow_api.id(13093588131888220884)
,p_display_sequence=>1
,p_display_value=>'Auto'
,p_return_value=>'AUTO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(13093589936736222273)
,p_plugin_attribute_id=>wwv_flow_api.id(13093588131888220884)
,p_display_sequence=>10
,p_display_value=>'Static by percent of window'
,p_return_value=>'STATIC_%'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(13093590506392222933)
,p_plugin_attribute_id=>wwv_flow_api.id(13093588131888220884)
,p_display_sequence=>20
,p_display_value=>'Static by pixels'
,p_return_value=>'STATIC_PX'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(13093810008479299215)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(13093588131888220884)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'STATIC_%,STATIC_PX'
,p_help_text=>'Use this attribute to set the height of the modal page. This value can be used to specify a percentage of the total screen or specific number of pixels which is determined by the Dialog Height/Width Mode attribute.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(13093812321639303027)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(13093588131888220884)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'STATIC_%,STATIC_PX'
,p_help_text=>'Use this attribute to set the width of the modal page. This value can be used to specify a percentage of the total screen or specific number of pixels which is determined by the Dialog Height/Width Mode attribute.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(13093854012813338301)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Modal Page ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>'Use this attribute to associate an identifier, such as "create-customer-page", with the modal page that has been opened. When the modal page closes this identifier will be passed back with the event object so that the closing of one modal page can be'
||' differentiated from another. The value can be accessed from the data object of "this" in a Dynamic Action with: this.data.modalPageId'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(35699256533563577394)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_name=>'modalpageautoclose'
,p_display_name=>'Auto Close'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(10299539618614409328)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_name=>'modalpageclose'
,p_display_name=>'Close'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4190128105487389)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_name=>'modalpageendopen'
,p_display_name=>'End Open'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4190533300488920)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_name=>'modalpagemanualclose'
,p_display_name=>'Manual Close'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(4190838840490520)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_name=>'modalpagestartopen'
,p_display_name=>'Start Open'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A75726C2874316F7665726C61792E706E672920726570656174203020303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B';
wwv_flow_api.g_varchar2_table(11) := '77696474683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D313031707820303B7D0D0A202020202363626F78546F7052696768747B77696474';
wwv_flow_api.g_varchar2_table(12) := '683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D313330707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A';
wwv_flow_api.g_varchar2_table(13) := '323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3130317078202D323970783B7D0D0A202020202363626F78426F74746F6D52696768747B776964';
wwv_flow_api.g_varchar2_table(14) := '74683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3133307078202D323970783B7D0D0A202020202363626F784D6964646C654C6566747B77';
wwv_flow_api.g_varchar2_table(15) := '696474683A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206C65667420746F70207265706561742D793B7D0D0A202020202363626F784D6964646C6552696768747B77696474683A323170783B206261636B';
wwv_flow_api.g_varchar2_table(16) := '67726F756E643A75726C287431636F6E74726F6C732E706E672920726967687420746F70207265706561742D793B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A323170783B206261636B67726F756E643A75726C287431626F';
wwv_flow_api.g_varchar2_table(17) := '726465722E706E672920302030207265706561742D783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A323170783B206261636B67726F756E643A75726C287431626F726465722E706E67292030202D32397078207265';
wwv_flow_api.g_varchar2_table(18) := '706561742D783B7D0D0A202020202363626F78436F6E74656E747B6261636B67726F756E643A236666663B206F766572666C6F773A68696464656E3B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D';
wwv_flow_api.g_varchar2_table(19) := '0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D';
wwv_flow_api.g_varchar2_table(20) := '3A323870783B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20636F';
wwv_flow_api.g_varchar2_table(21) := '6C6F723A233934393439343B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B206C6566743A353870783B20636F6C6F723A233934393439343B7D0D0A2020202020';
wwv_flow_api.g_varchar2_table(22) := '2020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B2072696768743A333070783B20636F6C6F723A233030393265663B7D0D0A20202020202020202363626F7850726576696F75737B';
wwv_flow_api.g_varchar2_table(23) := '706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B206C6566743A303B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3735707820303B2077696474683A323570783B2068';
wwv_flow_api.g_varchar2_table(24) := '65696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A2020';
wwv_flow_api.g_varchar2_table(25) := '2020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B206C6566743A323770783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3530';
wwv_flow_api.g_varchar2_table(26) := '707820303B2077696474683A323570783B206865696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D35';
wwv_flow_api.g_varchar2_table(27) := '307078202D323570783B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A75726C2874316C6F6164696E675F6261636B67726F756E642E706E6729206E6F2D7265706561742063656E7465722063';
wwv_flow_api.g_varchar2_table(28) := '656E7465723B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2874316C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(29) := '20202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B2072696768743A303B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3235707820303B';
wwv_flow_api.g_varchar2_table(30) := '2077696474683A323570783B206865696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3235707820';
wwv_flow_api.g_varchar2_table(31) := '2D323570783B7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E6720666978657320612070726F626C656D2077686572652049453720616E6420494538207265706C616365206120504E47277320616C706861207472616E73706172656E637920';
wwv_flow_api.g_varchar2_table(32) := '77697468206120626C61636B2066696C6C0D0A20207768656E20616E20616C7068612066696C74657220286F706163697479206368616E67652920697320736574206F6E2074686520656C656D656E74206F7220616E636573746F7220656C656D656E74';
wwv_flow_api.g_varchar2_table(33) := '2E202054686973207374796C65206973206E6F74206170706C69656420746F206F72206E656564656420696E204945392E0D0A20205365653A20687474703A2F2F6A61636B6C6D6F6F72652E636F6D2F6E6F7465732F69652D7472616E73706172656E63';
wwv_flow_api.g_varchar2_table(34) := '792D70726F626C656D732F0D0A2A2F0D0A2E63626F784945202363626F78546F704C6566742C0D0A2E63626F784945202363626F78546F7043656E7465722C0D0A2E63626F784945202363626F78546F7052696768742C0D0A2E63626F78494520236362';
wwv_flow_api.g_varchar2_table(35) := '6F78426F74746F6D4C6566742C0D0A2E63626F784945202363626F78426F74746F6D43656E7465722C0D0A2E63626F784945202363626F78426F74746F6D52696768742C0D0A2E63626F784945202363626F784D6964646C654C6566742C0D0A2E63626F';
wwv_flow_api.g_varchar2_table(36) := '784945202363626F784D6964646C655269676874207B0D0A2020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E74287374617274436F6C6F727374723D23303046464646';
wwv_flow_api.g_varchar2_table(37) := '46462C656E64436F6C6F727374723D233030464646464646293B0D0A7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E672070726F766964657320504E47207472616E73706172656E637920737570706F727420666F72204945360D0A20204665';
wwv_flow_api.g_varchar2_table(38) := '656C206672656520746F2072656D6F7665207468697320616E6420746865202F6965362F206469726563746F727920696620796F7520686176652064726F707065642049453620737570706F72742E0D0A2A2F0D0A2E63626F78494536202363626F7854';
wwv_flow_api.g_varchar2_table(39) := '6F704C6566747B6261636B67726F756E643A75726C287431626F72646572546F704C6566742E706E67293B7D0D0A2E63626F78494536202363626F78546F7043656E7465727B6261636B67726F756E643A75726C287431626F72646572546F7043656E74';
wwv_flow_api.g_varchar2_table(40) := '65722E706E67293B7D0D0A2E63626F78494536202363626F78546F7052696768747B6261636B67726F756E643A75726C287431626F72646572546F7052696768742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D4C6566747B62';
wwv_flow_api.g_varchar2_table(41) := '61636B67726F756E643A75726C287431626F72646572426F74746F6D4C6566742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D43656E7465727B6261636B67726F756E643A75726C287431626F72646572426F74746F6D43656E';
wwv_flow_api.g_varchar2_table(42) := '7465722E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D52696768747B6261636B67726F756E643A75726C287431626F72646572426F74746F6D52696768742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C';
wwv_flow_api.g_varchar2_table(43) := '654C6566747B6261636B67726F756E643A75726C287431626F726465724D6964646C654C6566742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C6552696768747B6261636B67726F756E643A75726C287431626F726465724D6964';
wwv_flow_api.g_varchar2_table(44) := '646C6552696768742E706E67293B7D0D0A0D0A2E63626F78494536202363626F78546F704C6566742C0D0A2E63626F78494536202363626F78546F7043656E7465722C0D0A2E63626F78494536202363626F78546F7052696768742C0D0A2E63626F7849';
wwv_flow_api.g_varchar2_table(45) := '4536202363626F78426F74746F6D4C6566742C0D0A2E63626F78494536202363626F78426F74746F6D43656E7465722C0D0A2E63626F78494536202363626F78426F74746F6D52696768742C0D0A2E63626F78494536202363626F784D6964646C654C65';
wwv_flow_api.g_varchar2_table(46) := '66742C0D0A2E63626F78494536202363626F784D6964646C655269676874207B0D0A202020205F6265686176696F723A2065787072657373696F6E28746869732E737263203D20746869732E737263203F20746869732E737263203A20746869732E6375';
wwv_flow_api.g_varchar2_table(47) := '7272656E745374796C652E6261636B67726F756E64496D6167652E73706C697428272227295B315D2C20746869732E7374796C652E6261636B67726F756E64203D20226E6F6E65222C20746869732E7374796C652E66696C746572203D202270726F6769';
wwv_flow_api.g_varchar2_table(48) := '643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861496D6167654C6F61646572287372633D22202B20746869732E737263202B20222C2073697A696E674D6574686F643D277363616C65272922293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4162751379407357)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A236666663B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78436F6E74656E747B6D617267696E2D746F703A333270783B206F766572666C6F77';
wwv_flow_api.g_varchar2_table(11) := '3A76697369626C653B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C6964';
wwv_flow_api.g_varchar2_table(12) := '20236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6261636B67726F756E643A233030303B2070616464696E673A3170783B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B';
wwv_flow_api.g_varchar2_table(13) := '67726F756E643A75726C2874326C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A233030303B7D0D0A';
wwv_flow_api.g_varchar2_table(14) := '20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20746F703A2D323270783B206C6566743A303B20636F6C6F723A233030303B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E';
wwv_flow_api.g_varchar2_table(15) := '3A6162736F6C7574653B20746F703A2D323270783B2072696768743A32303570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78536C69646573686F772C202363626F7850726576696F75732C20236362';
wwv_flow_api.g_varchar2_table(16) := '6F784E6578742C202363626F78436C6F73657B746578742D696E64656E743A2D3939393970783B2077696474683A323070783B206865696768743A323070783B20706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B206261636B67';
wwv_flow_api.g_varchar2_table(17) := '726F756E643A75726C287432636F6E74726F6C732E706E6729206E6F2D726570656174203020303B7D0D0A20202020202020202363626F7850726576696F75737B6261636B67726F756E642D706F736974696F6E3A307078203070783B2072696768743A';
wwv_flow_api.g_varchar2_table(18) := '343470783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A307078202D323570783B7D0D0A20202020202020202363626F784E6578747B6261636B67726F756E642D706F';
wwv_flow_api.g_varchar2_table(19) := '736974696F6E3A2D32357078203070783B2072696768743A323270783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D32357078202D323570783B7D0D0A202020202020202023';
wwv_flow_api.g_varchar2_table(20) := '63626F78436C6F73657B6261636B67726F756E642D706F736974696F6E3A2D35307078203070783B2072696768743A303B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3530';
wwv_flow_api.g_varchar2_table(21) := '7078202D323570783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F7850726576696F75732C202E63626F78536C69646573686F775F6F6666202363626F7850726576696F75737B72696768743A363670783B7D0D0A';
wwv_flow_api.g_varchar2_table(22) := '20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B2072696768743A343470783B7D0D0A20202020202020202E63626F';
wwv_flow_api.g_varchar2_table(23) := '78536C69646573686F775F6F6E202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3130307078202D323570783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363';
wwv_flow_api.g_varchar2_table(24) := '626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D3130307078203070783B2072696768743A343470783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F77';
wwv_flow_api.g_varchar2_table(25) := '3A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4163449438408230)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t2colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A233030303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78436F6E74656E747B6D617267696E2D746F703A323070783B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(11) := '20202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A202020202020202023';
wwv_flow_api.g_varchar2_table(12) := '63626F784C6F61646564436F6E74656E747B626F726465723A35707820736F6C696420233030303B206261636B67726F756E643A236666663B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20746F';
wwv_flow_api.g_varchar2_table(13) := '703A2D323070783B206C6566743A303B20636F6C6F723A236363633B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B2072696768743A3070783B20636F6C6F723A23';
wwv_flow_api.g_varchar2_table(14) := '6363633B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B2072696768743A393070783B20636F6C6F723A236666663B7D0D0A20202020202020202363626F7850';
wwv_flow_api.g_varchar2_table(15) := '726576696F75737B706F736974696F6E3A6162736F6C7574653B20746F703A3530253B206C6566743A3570783B206D617267696E2D746F703A2D333270783B206261636B67726F756E643A75726C287433636F6E74726F6C732E706E6729206E6F2D7265';
wwv_flow_api.g_varchar2_table(16) := '7065617420746F70206C6566743B2077696474683A323870783B206865696768743A363570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E';
wwv_flow_api.g_varchar2_table(17) := '642D706F736974696F6E3A626F74746F6D206C6566743B7D0D0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20746F703A3530253B2072696768743A3570783B206D617267696E2D746F703A2D333270783B';
wwv_flow_api.g_varchar2_table(18) := '206261636B67726F756E643A75726C287433636F6E74726F6C732E706E6729206E6F2D72657065617420746F702072696768743B2077696474683A323870783B206865696768743A363570783B20746578742D696E64656E743A2D3939393970783B7D0D';
wwv_flow_api.g_varchar2_table(19) := '0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A626F74746F6D2072696768743B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(20) := '233030303B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2874336C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020';
wwv_flow_api.g_varchar2_table(21) := '202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20746F703A3570783B2072696768743A3570783B20646973706C61793A626C6F636B3B206261636B67726F756E643A75726C287433636F6E74726F6C732E706E6729206E6F2D';
wwv_flow_api.g_varchar2_table(22) := '72657065617420746F702063656E7465723B2077696474683A333870783B206865696768743A313970783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F75';
wwv_flow_api.g_varchar2_table(23) := '6E642D706F736974696F6E3A626F74746F6D2063656E7465723B7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4164147713408997)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t3colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A236666663B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B77696474683A323570783B206865696768743A323570783B20';
wwv_flow_api.g_varchar2_table(11) := '6261636B67726F756E643A75726C287434626F72646572312E706E6729206E6F2D726570656174203020303B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A323570783B206261636B67726F756E643A75726C287434626F7264';
wwv_flow_api.g_varchar2_table(12) := '6572312E706E6729207265706561742D782030202D353070783B7D0D0A202020202363626F78546F7052696768747B77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E67';
wwv_flow_api.g_varchar2_table(13) := '29206E6F2D726570656174202D3235707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E6729206E6F';
wwv_flow_api.g_varchar2_table(14) := '2D7265706561742030202D323570783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E6729207265706561742D782030202D37357078';
wwv_flow_api.g_varchar2_table(15) := '3B7D0D0A202020202363626F78426F74746F6D52696768747B77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E6729206E6F2D726570656174202D32357078202D323570';
wwv_flow_api.g_varchar2_table(16) := '783B7D0D0A202020202363626F784D6964646C654C6566747B77696474683A323570783B206261636B67726F756E643A75726C287434626F72646572322E706E6729207265706561742D79203020303B7D0D0A202020202363626F784D6964646C655269';
wwv_flow_api.g_varchar2_table(17) := '6768747B77696474683A323570783B206261636B67726F756E643A75726C287434626F72646572322E706E6729207265706561742D79202D3235707820303B7D0D0A202020202363626F78436F6E74656E747B6261636B67726F756E643A236666663B20';
wwv_flow_api.g_varchar2_table(18) := '6F766572666C6F773A68696464656E3B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A3170';
wwv_flow_api.g_varchar2_table(19) := '7820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A323070783B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574';
wwv_flow_api.g_varchar2_table(20) := '653B20626F74746F6D3A3070783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20636F6C6F723A233939393B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162';
wwv_flow_api.g_varchar2_table(21) := '736F6C7574653B20626F74746F6D3A3070783B206C6566743A31303070783B20636F6C6F723A233939393B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B20';
wwv_flow_api.g_varchar2_table(22) := '72696768743A343270783B20636F6C6F723A233434343B7D0D0A20202020202020202363626F7850726576696F75737B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A303B20636F6C6F723A233434343B7D0D';
wwv_flow_api.g_varchar2_table(23) := '0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A363370783B20636F6C6F723A233434343B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C';
wwv_flow_api.g_varchar2_table(24) := '61797B6261636B67726F756E643A236666662075726C2874346C6F6164696E672E67696629206E6F2D72657065617420357078203570783B7D0D0A20202020202020202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20626F74';
wwv_flow_api.g_varchar2_table(25) := '746F6D3A303B2072696768743A303B20646973706C61793A626C6F636B3B20636F6C6F723A233434343B7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E6720666978657320612070726F626C656D2077686572652049453720616E6420494538';
wwv_flow_api.g_varchar2_table(26) := '207265706C616365206120504E47277320616C706861207472616E73706172656E63792077697468206120626C61636B2066696C6C0D0A20207768656E20616E20616C7068612066696C74657220286F706163697479206368616E676529206973207365';
wwv_flow_api.g_varchar2_table(27) := '74206F6E2074686520656C656D656E74206F7220616E636573746F7220656C656D656E742E202054686973207374796C65206973206E6F74206170706C69656420746F206F72206E656564656420696E204945392E0D0A20205365653A20687474703A2F';
wwv_flow_api.g_varchar2_table(28) := '2F6A61636B6C6D6F6F72652E636F6D2F6E6F7465732F69652D7472616E73706172656E63792D70726F626C656D732F0D0A2A2F0D0A2E63626F784945202363626F78546F704C6566742C0D0A2E63626F784945202363626F78546F7043656E7465722C0D';
wwv_flow_api.g_varchar2_table(29) := '0A2E63626F784945202363626F78546F7052696768742C0D0A2E63626F784945202363626F78426F74746F6D4C6566742C0D0A2E63626F784945202363626F78426F74746F6D43656E7465722C0D0A2E63626F784945202363626F78426F74746F6D5269';
wwv_flow_api.g_varchar2_table(30) := '6768742C0D0A2E63626F784945202363626F784D6964646C654C6566742C0D0A2E63626F784945202363626F784D6964646C655269676874207B0D0A2020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D696372';
wwv_flow_api.g_varchar2_table(31) := '6F736F66742E6772616469656E74287374617274436F6C6F727374723D2330304646464646462C656E64436F6C6F727374723D233030464646464646293B0D0A7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E672070726F766964657320504E';
wwv_flow_api.g_varchar2_table(32) := '47207472616E73706172656E637920737570706F727420666F72204945360D0A20204665656C206672656520746F2072656D6F7665207468697320616E6420746865202F6965362F206469726563746F727920696620796F7520686176652064726F7070';
wwv_flow_api.g_varchar2_table(33) := '65642049453620737570706F72742E0D0A2A2F0D0A2E63626F78494536202363626F78546F704C6566747B6261636B67726F756E643A75726C287434626F72646572546F704C6566742E706E67293B7D0D0A2E63626F78494536202363626F78546F7043';
wwv_flow_api.g_varchar2_table(34) := '656E7465727B6261636B67726F756E643A75726C287434626F72646572546F7043656E7465722E706E67293B7D0D0A2E63626F78494536202363626F78546F7052696768747B6261636B67726F756E643A75726C287434626F72646572546F7052696768';
wwv_flow_api.g_varchar2_table(35) := '742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D4C6566747B6261636B67726F756E643A75726C287434626F72646572426F74746F6D4C6566742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D43656E';
wwv_flow_api.g_varchar2_table(36) := '7465727B6261636B67726F756E643A75726C287434626F72646572426F74746F6D43656E7465722E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D52696768747B6261636B67726F756E643A75726C287434626F72646572426F74';
wwv_flow_api.g_varchar2_table(37) := '746F6D52696768742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C654C6566747B6261636B67726F756E643A75726C287434626F726465724D6964646C654C6566742E706E67293B7D0D0A2E63626F78494536202363626F784D69';
wwv_flow_api.g_varchar2_table(38) := '64646C6552696768747B6261636B67726F756E643A75726C287434626F726465724D6964646C6552696768742E706E67293B7D0D0A0D0A2E63626F78494536202363626F78546F704C6566742C0D0A2E63626F78494536202363626F78546F7043656E74';
wwv_flow_api.g_varchar2_table(39) := '65722C0D0A2E63626F78494536202363626F78546F7052696768742C0D0A2E63626F78494536202363626F78426F74746F6D4C6566742C0D0A2E63626F78494536202363626F78426F74746F6D43656E7465722C0D0A2E63626F78494536202363626F78';
wwv_flow_api.g_varchar2_table(40) := '426F74746F6D52696768742C0D0A2E63626F78494536202363626F784D6964646C654C6566742C0D0A2E63626F78494536202363626F784D6964646C655269676874207B0D0A202020205F6265686176696F723A2065787072657373696F6E2874686973';
wwv_flow_api.g_varchar2_table(41) := '2E737263203D20746869732E737263203F20746869732E737263203A20746869732E63757272656E745374796C652E6261636B67726F756E64496D6167652E73706C697428272227295B315D2C20746869732E7374796C652E6261636B67726F756E6420';
wwv_flow_api.g_varchar2_table(42) := '3D20226E6F6E65222C20746869732E7374796C652E66696C746572203D202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861496D6167654C6F61646572287372633D22202B20746869732E737263202B';
wwv_flow_api.g_varchar2_table(43) := '20222C2073697A696E674D6574686F643D277363616C65272922293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4164845988409763)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A233030303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B77696474683A313470783B206865696768743A313470783B20';
wwv_flow_api.g_varchar2_table(11) := '6261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729206E6F2D726570656174203020303B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A313470783B206261636B67726F756E643A75726C287435626F72';
wwv_flow_api.g_varchar2_table(12) := '6465722E706E6729207265706561742D7820746F70206C6566743B7D0D0A202020202363626F78546F7052696768747B77696474683A313470783B206865696768743A313470783B206261636B67726F756E643A75726C287435636F6E74726F6C732E70';
wwv_flow_api.g_varchar2_table(13) := '6E6729206E6F2D726570656174202D3336707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A313470783B206865696768743A343370783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729';
wwv_flow_api.g_varchar2_table(14) := '206E6F2D7265706561742030202D333270783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A343370783B206261636B67726F756E643A75726C287435626F726465722E706E6729207265706561742D7820626F74746F';
wwv_flow_api.g_varchar2_table(15) := '6D206C6566743B7D0D0A202020202363626F78426F74746F6D52696768747B77696474683A313470783B206865696768743A343370783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729206E6F2D726570656174202D3336';
wwv_flow_api.g_varchar2_table(16) := '7078202D333270783B7D0D0A202020202363626F784D6964646C654C6566747B77696474683A313470783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729207265706561742D79202D313735707820303B7D0D0A20202020';
wwv_flow_api.g_varchar2_table(17) := '2363626F784D6964646C6552696768747B77696474683A313470783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729207265706561742D79202D323131707820303B7D0D0A202020202363626F78436F6E74656E747B6261';
wwv_flow_api.g_varchar2_table(18) := '636B67726F756E643A236666663B206F766572666C6F773A76697369626C653B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E67';
wwv_flow_api.g_varchar2_table(19) := '3A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A3570783B7D0D0A20202020202020202363626F784C6F6164696E67';
wwv_flow_api.g_varchar2_table(20) := '4F7665726C61797B6261636B67726F756E643A75726C2874356C6F6164696E675F6261636B67726F756E642E706E6729206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F784C6F6164696E6747726170';
wwv_flow_api.g_varchar2_table(21) := '6869637B6261636B67726F756E643A75726C2874356C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B2062';
wwv_flow_api.g_varchar2_table(22) := '6F74746F6D3A2D323570783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20666F6E742D7765696768743A626F6C643B20636F6C6F723A233743374337433B7D0D0A20202020202020202363626F78';
wwv_flow_api.g_varchar2_table(23) := '43757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323570783B206C6566743A353870783B20666F6E742D7765696768743A626F6C643B20636F6C6F723A233743374337433B7D0D0A20202020202020200D0A202020';
wwv_flow_api.g_varchar2_table(24) := '20202020202363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323970783B206261636B67726F756E';
wwv_flow_api.g_varchar2_table(25) := '643A75726C287435636F6E74726F6C732E706E6729206E6F2D72657065617420307078203070783B2077696474683A323370783B206865696768743A323370783B20746578742D696E64656E743A2D3939393970783B7D0D0A2020202020202020236362';
wwv_flow_api.g_varchar2_table(26) := '6F7850726576696F75737B6C6566743A3070783B206261636B67726F756E642D706F736974696F6E3A202D35317078202D323570783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F7369';
wwv_flow_api.g_varchar2_table(27) := '74696F6E3A2D35317078203070783B7D0D0A20202020202020202363626F784E6578747B6C6566743A323770783B206261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A20202020202020202363626F784E6578743A';
wwv_flow_api.g_varchar2_table(28) := '686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078203070783B7D0D0A20202020202020202363626F78436C6F73657B72696768743A303B206261636B67726F756E642D706F736974696F6E3A2D3130307078202D323570783B';
wwv_flow_api.g_varchar2_table(29) := '7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3130307078203070783B7D0D0A20202020202020200D0A20202020202020202E63626F78536C69646573686F775F6F6E202363';
wwv_flow_api.g_varchar2_table(30) := '626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D3132357078203070783B2072696768743A323770783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F773A';
wwv_flow_api.g_varchar2_table(31) := '686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3135307078203070783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F';
wwv_flow_api.g_varchar2_table(32) := '6E3A2D3135307078202D323570783B2072696768743A323770783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D31';
wwv_flow_api.g_varchar2_table(33) := '32357078203070783B7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4165544478410510)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t5colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2861297B612E776964676574282275692E617065785F6D6F64616C5F70616765222C7B6F7074696F6E733A7B7472616E736974696F6E3A6E756C6C2C6C6F6164696E67496D6167655372633A6E756C6C2C696E697469616C486569';
wwv_flow_api.g_varchar2_table(2) := '6768743A6E756C6C2C696E697469616C57696474683A6E756C6C2C6F7665726C61794F7061636974793A6E756C6C2C7363726F6C6C696E673A6E756C6C2C647261676761626C653A6E756C6C7D2C5F6372656174655072697661746553746F726167653A';
wwv_flow_api.g_varchar2_table(3) := '66756E6374696F6E28297B76617220623D746869733B6966286128222370646562756722292E6C656E677468297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F6372656174655072697661746553746F7261676522';
wwv_flow_api.g_varchar2_table(4) := '27297D622E5F76616C7565733D7B75726C3A6E756C6C2C6469616C6F675469746C653A6E756C6C2C636C6F736553656C6563746F723A6E756C6C2C70726576656E7444656661756C743A6E756C6C2C68656967687457696474684D6F64653A6E756C6C2C';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A6E756C6C2C77696474683A6E756C6C2C636C6F7365456C656D656E7453656C6563746F723A6E756C6C2C6D6F64616C5061676549643A6E756C6C2C6D6F64616C50616765436C6F736556616C75653A6E756C6C2C6469616C6F67546F70';
wwv_flow_api.g_varchar2_table(6) := '3A302C6469616C6F674C6566743A302C696672616D654865696768743A302C696672616D6557696474683A302C686173565363726F6C6C3A66616C73652C686173485363726F6C6C3A66616C73652C6175746F436C6F7365643A66616C73652C64656275';
wwv_flow_api.g_varchar2_table(7) := '673A6128222370646562756722292E6C656E677468213D3D307D3B622E5F656C656D656E74733D7B2477696E646F773A7B7D2C246469616C6F673A7B7D2C24777261707065723A7B7D2C24696672616D653A7B7D7D3B696628622E5F76616C7565732E64';
wwv_flow_api.g_varchar2_table(8) := '65627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F6372656174655072697661746553746F726167652227297D7D2C5F6372656174653A66756E6374696F6E28297B76617220633D746869733B76617220623D6E';
wwv_flow_api.g_varchar2_table(9) := '657720496D61676528293B622E7372633D632E6F7074696F6E732E6C6F6164696E67496D6167655372633B6966286128222370646562756722292E6C656E677468297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F';
wwv_flow_api.g_varchar2_table(10) := '6372656174652227293B617065782E646562756728222E2E2E4F7074696F6E7322293B666F72286E616D6520696E20632E6F7074696F6E73297B617065782E646562756728222E2E2E2E2E2E222B6E616D652B273A2022272B632E6F7074696F6E735B6E';
wwv_flow_api.g_varchar2_table(11) := '616D655D2B272227297D7D632E5F6372656174655072697661746553746F7261676528293B632E5F656C656D656E74732E2477696E646F773D612877696E646F77293B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D';
wwv_flow_api.g_varchar2_table(12) := '6F64616C2050616765202D20456E6420225F6372656174652227297D7D2C6F70656E506167653A66756E6374696F6E28642C632C662C652C622C67297B76617220683D746869733B76617220693D7B7469746C653A756E646566696E65642C636C6F7365';
wwv_flow_api.g_varchar2_table(13) := '53656C6563746F723A756E646566696E65642C6D6F64616C5061676549643A756E646566696E65642C6865696768743A756E646566696E65647D3B696628682E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C20506167';
wwv_flow_api.g_varchar2_table(14) := '65202D20537461727420226F70656E506167652227297D682E5F76616C7565732E6175746F436C6F7365643D66616C73653B682E5F76616C7565732E6469616C6F675469746C653D643B682E5F76616C7565732E636C6F7365456C656D656E7453656C65';
wwv_flow_api.g_varchar2_table(15) := '63746F723D633B682E5F76616C7565732E6D6F64616C5061676549643D663B682E5F76616C7565732E68656967687457696474684D6F64653D653B682E5F76616C7565732E6865696768743D623B682E5F76616C7565732E77696474683D673B612E636F';
wwv_flow_api.g_varchar2_table(16) := '6C6F72626F78287B7472616E736974696F6E3A682E6F7074696F6E732E7472616E736974696F6E2C7469746C653A682E5F76616C7565732E6469616C6F675469746C652C6865696768743A682E6F7074696F6E732E696E697469616C4865696768742B22';
wwv_flow_api.g_varchar2_table(17) := '7078222C77696474683A682E6F7074696F6E732E696E697469616C57696474682B227078222C696672616D653A747275652C7363726F6C6C696E673A682E6F7074696F6E732E7363726F6C6C696E672C66617374496672616D653A66616C73652C6F7665';
wwv_flow_api.g_varchar2_table(18) := '726C6179436C6F73653A66616C73652C6F7061636974793A682E6F7074696F6E732E6F7665726C61794F7061636974792C687265663A682E5F76616C7565732E75726C2C6F6E4F70656E3A66756E6374696F6E28297B696628682E6F7074696F6E732E64';
wwv_flow_api.g_varchar2_table(19) := '7261676761626C65297B61282223636F6C6F72626F7822292E647261676761626C6528292E6373732822637572736F72222C226D6F766522297D6128646F63756D656E74292E747269676765722822617065786D6F64616C706167656F70656E22297D2C';
wwv_flow_api.g_varchar2_table(20) := '6F6E436F6D706C6574653A66756E6374696F6E28297B682E5F68616E646C65496672616D654C6F616428293B6128646F63756D656E74292E747269676765722822617065786D6F64616C70616765636F6D706C65746522297D2C6F6E436C65616E75703A';
wwv_flow_api.g_varchar2_table(21) := '66756E6374696F6E28297B682E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C682E5F636865636B526573697A6554696D6572293B69662821682E5F76616C7565732E6175746F436C6F736564297B6128646F6375';
wwv_flow_api.g_varchar2_table(22) := '6D656E74292E7472696767657228226D6F64616C706167656D616E75616C636C6F7365222C7B6D6F64616C5061676549643A682E5F76616C7565732E6D6F64616C5061676549642C6D6F64616C50616765436C6F736556616C75653A2828682E5F76616C';
wwv_flow_api.g_varchar2_table(23) := '7565732E6D6F64616C50616765436C6F736556616C7565293F682E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653A2222297D297D682E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653D6E756C6C7D2C6F6E43';
wwv_flow_api.g_varchar2_table(24) := '6C6F7365643A66756E6374696F6E28297B6128646F63756D656E74292E747269676765722822617065786D6F64616C70616765636C6F73656422297D7D293B682E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569';
wwv_flow_api.g_varchar2_table(25) := '773A687D2C682E5F636865636B526573697A6554696D6572293B696628682E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420226F70656E506167652227297D7D2C6F70656E506167654672';
wwv_flow_api.g_varchar2_table(26) := '6F6D41706578546869733A66756E6374696F6E2869297B76617220673D746869733B76617220653D692E616374696F6E2E61747472696275746530323B76617220683D692E616374696F6E2E61747472696275746530333B76617220643D692E61637469';
wwv_flow_api.g_varchar2_table(27) := '6F6E2E61747472696275746530353B76617220633D692E616374696F6E2E61747472696275746530373B76617220623B76617220663B696628672E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D2053';
wwv_flow_api.g_varchar2_table(28) := '7461727420226F70656E5061676546726F6D41706578546869732227297D696628653D3D3D2253544154494322297B672E5F76616C7565732E75726C3D687D656C73657B696628653D3D3D22545249475F454C454D454E545F4154545222297B672E5F76';
wwv_flow_api.g_varchar2_table(29) := '616C7565732E75726C3D6128692E74726967676572696E67456C656D656E74292E617474722864297D7D696628633D3D3D224155544F22297B623D66616C73653B663D66616C73657D656C73657B696628633D3D3D225354415449435F505822297B623D';
wwv_flow_api.g_varchar2_table(30) := '692E616374696F6E2E61747472696275746530382B227078223B663D692E616374696F6E2E61747472696275746530392B227078227D656C73657B696628633D3D3D225354415449435F2522297B623D692E616374696F6E2E6174747269627574653038';
wwv_flow_api.g_varchar2_table(31) := '2B2225223B663D692E616374696F6E2E61747472696275746530392B2225227D7D7D672E6F70656E5061676528692E616374696F6E2E61747472696275746530312C692E616374696F6E2E61747472696275746530362C692E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(32) := '696275746531302C632C622C66293B696628672E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420226F70656E5061676546726F6D41706578546869732227297D7D2C5F68616E646C654966';
wwv_flow_api.g_varchar2_table(33) := '72616D654C6F61643A66756E6374696F6E28297B76617220653D746869733B652E5F656C656D656E74732E24696672616D653D61282223636F6C6F72626F7820696672616D6522293B76617220623D652E5F656C656D656E74732E24696672616D652E63';
wwv_flow_api.g_varchar2_table(34) := '6F6E74656E747328292E66696E6428652E5F76616C7565732E636C6F7365456C656D656E7453656C6563746F72293B76617220643D652E5F656C656D656E74732E24696672616D652E6765742830292E636F6E74656E7457696E646F773B76617220633D';
wwv_flow_api.g_varchar2_table(35) := '642E617065782E6A51756572793B696628652E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F68616E646C65496672616D654C6F61642227297D6328652E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(36) := '2E24696672616D652E636F6E74656E747328292E676574283029292E62696E642822617065786265666F7265706167657375626D6974222C66756E6374696F6E28297B6128222363626F784C6F61646564436F6E74656E7422292E6869646528293B6128';
wwv_flow_api.g_varchar2_table(37) := '222363626F784C6F6164696E674F7665726C617922292E73686F7728293B6128222363626F784C6F6164696E674772617068696322292E73686F7728297D293B652E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E66696E6428';
wwv_flow_api.g_varchar2_table(38) := '2223617065782D6465762D746F6F6C6261722C2368746D6C6462446576546F6F6C62617222292E72656D6F766528293B696628622E6C656E677468297B652E5F76616C7565732E6175746F436C6F7365643D747275653B6A51756572792E636F6C6F7262';
wwv_flow_api.g_varchar2_table(39) := '6F782E636C6F736528293B6128646F63756D656E74292E7472696767657228226D6F64616C706167656175746F636C6F7365222C7B6D6F64616C5061676549643A652E5F76616C7565732E6D6F64616C5061676549642C22246D6F64616C50616765436C';
wwv_flow_api.g_varchar2_table(40) := '6F73654F626A656374223A622E636C6F6E652874727565297D297D656C73657B652E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E66696E642822626F647922292E63737328226D617267696E222C2230707822293B61282223';
wwv_flow_api.g_varchar2_table(41) := '63626F784C6F6164696E674F7665726C617922292E6869646528293B6128222363626F784C6F6164696E674772617068696322292E6869646528293B6128222363626F784C6F61646564436F6E74656E7422292E73686F7728293B652E5F726573697A65';
wwv_flow_api.g_varchar2_table(42) := '4D6F64616C28293B652E5F656C656D656E74732E24696672616D652E72656D6F7665436C617373282275692D68656C7065722D68696464656E2D61636365737369626C6522293B652E5F656C656D656E74732E24696672616D652E6F6E6528226C6F6164';
wwv_flow_api.g_varchar2_table(43) := '222C66756E6374696F6E28297B652E5F68616E646C65496672616D654C6F616428297D297D696628652E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F68616E646C65496672616D65';
wwv_flow_api.g_varchar2_table(44) := '4C6F61642227297D7D2C5F726573697A654D6F64616C3A66756E6374696F6E2862297B76617220633D746869733B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F72';
wwv_flow_api.g_varchar2_table(45) := '6573697A654D6F64616C2227297D632E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C632E5F636865636B526573697A6554696D6572293B69662862297B6A51756572792E636F6C6F72626F782E726573697A6528';
wwv_flow_api.g_varchar2_table(46) := '7B77696474683A622E77696474682C6865696768743A622E6865696768742C696E6E65724865696768743A622E696E6E65724865696768742C696E6E657257696474683A622E696E6E657257696474687D297D656C73657B696628632E5F76616C756573';
wwv_flow_api.g_varchar2_table(47) := '2E68656967687457696474684D6F64653D3D3D224155544F22297B6A51756572792E636F6C6F72626F782E726573697A65287B696E6E65724865696768743A632E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E686569676874';
wwv_flow_api.g_varchar2_table(48) := '28292C696E6E657257696474683A632E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E776964746828297D297D656C73657B6A51756572792E636F6C6F72626F782E726573697A65287B696E6E65724865696768743A632E5F76';
wwv_flow_api.g_varchar2_table(49) := '616C7565732E6865696768742C696E6E657257696474683A632E5F76616C7565732E77696474687D297D7D632E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569773A637D2C632E5F636865636B526573697A6554';
wwv_flow_api.g_varchar2_table(50) := '696D6572293B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F726573697A654D6F64616C2227297D7D2C5F636865636B526573697A6554696D65723A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(51) := '2863297B76617220623D632E646174612E7569773B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F636865636B526573697A6554696D65722227297D696628622E5F';
wwv_flow_api.g_varchar2_table(52) := '76616C7565732E74696D6572297B636C65617254696D656F757428622E5F76616C7565732E74696D6572297D622E5F76616C7565732E74696D65723D73657454696D656F75742866756E6374696F6E28297B622E5F68616E646C6557696E646F77526573';
wwv_flow_api.g_varchar2_table(53) := '697A6528297D2C3530293B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F636865636B526573697A6554696D65722227297D7D2C5F68616E646C6557696E646F77526573';
wwv_flow_api.g_varchar2_table(54) := '697A653A66756E6374696F6E28297B76617220623D746869733B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F68616E646C6557696E646F77526573697A65222729';
wwv_flow_api.g_varchar2_table(55) := '7D696628622E5F76616C7565732E68656967687457696474684D6F6465213D3D224155544F22297B622E5F726573697A654D6F64616C28297D696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C205061676520';
wwv_flow_api.g_varchar2_table(56) := '2D20456E6420225F68616E646C6557696E646F77526573697A652227297D7D2C636C6F73653A66756E6374696F6E2863297B76617220623D746869733B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050';
wwv_flow_api.g_varchar2_table(57) := '616765202D2053746172742022636C6F73652227297D622E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653D633B6A51756572792E636F6C6F72626F782E636C6F736528293B696628622E5F76616C7565732E6465627567297B6170';
wwv_flow_api.g_varchar2_table(58) := '65782E646562756728274D6F64616C2050616765202D20456E642022636C6F73652227297D7D2C726573697A653A66756E6374696F6E2862297B7569773D746869733B6966287569772E5F76616C7565732E6465627567297B617065782E646562756728';
wwv_flow_api.g_varchar2_table(59) := '274D6F64616C2050616765202D2053746172742022726573697A652227297D7569772E5F726573697A654D6F64616C2862293B6966287569772E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E';
wwv_flow_api.g_varchar2_table(60) := '642022726573697A652227297D7D7D297D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4166241675411777)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'apex_modal_page.min.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20436F6C6F72426F782076312E332E3139202D206A5175657279206C69676874626F7820706C7567696E0D0A2F2F202863292032303131204A61636B204D6F6F7265202D206A61636B6C6D6F6F72652E636F6D0D0A2F2F204C6963656E73653A2068';
wwv_flow_api.g_varchar2_table(2) := '7474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E7068700D0A2866756E6374696F6E28612C622C63297B66756E6374696F6E205A28632C642C65297B76617220673D622E637265617465';
wwv_flow_api.g_varchar2_table(3) := '456C656D656E742863293B72657475726E2064262628672E69643D662B64292C65262628672E7374796C652E637373546578743D65292C612867297D66756E6374696F6E20242861297B76617220623D792E6C656E6774682C633D28512B612925623B72';
wwv_flow_api.g_varchar2_table(4) := '657475726E20633C303F622B633A637D66756E6374696F6E205F28612C62297B72657475726E204D6174682E726F756E6428282F252F2E746573742861293F28623D3D3D2278223F7A2E776964746828293A7A2E6865696768742829292F3130303A3129';
wwv_flow_api.g_varchar2_table(5) := '2A7061727365496E7428612C313029297D66756E6374696F6E2062612861297B72657475726E204B2E70686F746F7C7C2F5C2E286769667C706E677C6A70653F677C626D707C69636F292828237C5C3F292E2A293F242F692E746573742861297D66756E';
wwv_flow_api.g_varchar2_table(6) := '6374696F6E20626228297B76617220623B4B3D612E657874656E64287B7D2C612E6461746128502C6529293B666F72286220696E204B29612E697346756E6374696F6E284B5B625D292626622E736C69636528302C3229213D3D226F6E222626284B5B62';
wwv_flow_api.g_varchar2_table(7) := '5D3D4B5B625D2E63616C6C285029293B4B2E72656C3D4B2E72656C7C7C502E72656C7C7C226E6F666F6C6C6F77222C4B2E687265663D4B2E687265667C7C612850292E6174747228226872656622292C4B2E7469746C653D4B2E7469746C657C7C502E74';
wwv_flow_api.g_varchar2_table(8) := '69746C652C747970656F66204B2E687265663D3D22737472696E67222626284B2E687265663D612E7472696D284B2E6872656629297D66756E6374696F6E20626328622C63297B612E6576656E742E747269676765722862292C632626632E63616C6C28';
wwv_flow_api.g_varchar2_table(9) := '50297D66756E6374696F6E20626428297B76617220612C623D662B22536C69646573686F775F222C633D22636C69636B2E222B662C642C652C673B4B2E736C69646573686F772626795B315D3F28643D66756E6374696F6E28297B462E74657874284B2E';
wwv_flow_api.g_varchar2_table(10) := '736C69646573686F7753746F70292E756E62696E642863292E62696E64286A2C66756E6374696F6E28297B6966284B2E6C6F6F707C7C795B512B315D29613D73657454696D656F757428572E6E6578742C4B2E736C69646573686F775370656564297D29';
wwv_flow_api.g_varchar2_table(11) := '2E62696E6428692C66756E6374696F6E28297B636C65617254696D656F75742861297D292E6F6E6528632B2220222B6B2C65292C722E72656D6F7665436C61737328622B226F666622292E616464436C61737328622B226F6E22292C613D73657454696D';
wwv_flow_api.g_varchar2_table(12) := '656F757428572E6E6578742C4B2E736C69646573686F775370656564297D2C653D66756E6374696F6E28297B636C65617254696D656F75742861292C462E74657874284B2E736C69646573686F775374617274292E756E62696E64285B6A2C692C6B2C63';
wwv_flow_api.g_varchar2_table(13) := '5D2E6A6F696E2822202229292E6F6E6528632C66756E6374696F6E28297B572E6E65787428292C6428297D292C722E72656D6F7665436C61737328622B226F6E22292E616464436C61737328622B226F666622297D2C4B2E736C69646573686F77417574';
wwv_flow_api.g_varchar2_table(14) := '6F3F6428293A652829293A722E72656D6F7665436C61737328622B226F666620222B622B226F6E22297D66756E6374696F6E2062652862297B557C7C28503D622C626228292C793D612850292C513D302C4B2E72656C213D3D226E6F666F6C6C6F772226';
wwv_flow_api.g_varchar2_table(15) := '2628793D6128222E222B67292E66696C7465722866756E6374696F6E28297B76617220623D612E6461746128746869732C65292E72656C7C7C746869732E72656C3B72657475726E20623D3D3D4B2E72656C7D292C513D792E696E6465782850292C513D';
wwv_flow_api.g_varchar2_table(16) := '3D3D2D31262628793D792E6164642850292C513D792E6C656E6774682D3129292C537C7C28533D543D21302C722E73686F7728292C4B2E72657475726E466F6375732626612850292E626C757228292E6F6E65286C2C66756E6374696F6E28297B612874';
wwv_flow_api.g_varchar2_table(17) := '686973292E666F63757328297D292C712E637373287B6F7061636974793A2B4B2E6F7061636974792C637572736F723A4B2E6F7665726C6179436C6F73653F22706F696E746572223A226175746F227D292E73686F7728292C4B2E773D5F284B2E696E69';
wwv_flow_api.g_varchar2_table(18) := '7469616C57696474682C227822292C4B2E683D5F284B2E696E697469616C4865696768742C227922292C572E706F736974696F6E28292C6F26267A2E62696E642822726573697A652E222B702B22207363726F6C6C2E222B702C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(19) := '7B712E637373287B77696474683A7A2E776964746828292C6865696768743A7A2E68656967687428292C746F703A7A2E7363726F6C6C546F7028292C6C6566743A7A2E7363726F6C6C4C65667428297D297D292E747269676765722822726573697A652E';
wwv_flow_api.g_varchar2_table(20) := '222B70292C626328682C4B2E6F6E4F70656E292C4A2E6164642844292E6869646528292C492E68746D6C284B2E636C6F7365292E73686F772829292C572E6C6F616428213029297D66756E6374696F6E20626628297B21722626622E626F647926262859';
wwv_flow_api.g_varchar2_table(21) := '3D21312C7A3D612863292C723D5A2858292E61747472287B69643A652C22636C617373223A6E3F662B286F3F22494536223A22494522293A22227D292E6869646528292C713D5A28582C224F7665726C6179222C6F3F22706F736974696F6E3A6162736F';
wwv_flow_api.g_varchar2_table(22) := '6C757465223A2222292E6869646528292C733D5A28582C225772617070657222292C743D5A28582C22436F6E74656E7422292E617070656E6428413D5A28582C224C6F61646564436F6E74656E74222C2277696474683A303B206865696768743A303B20';
wwv_flow_api.g_varchar2_table(23) := '6F766572666C6F773A68696464656E22292C433D5A28582C224C6F6164696E674F7665726C617922292E616464285A28582C224C6F6164696E67477261706869632229292C443D5A28582C225469746C6522292C453D5A28582C2243757272656E742229';
wwv_flow_api.g_varchar2_table(24) := '2C473D5A28582C224E65787422292C483D5A28582C2250726576696F757322292C463D5A28582C22536C69646573686F7722292E62696E6428682C6264292C493D5A28582C22436C6F73652229292C732E617070656E64285A2858292E617070656E6428';
wwv_flow_api.g_varchar2_table(25) := '5A28582C22546F704C65667422292C753D5A28582C22546F7043656E74657222292C5A28582C22546F7052696768742229292C5A28582C21312C22636C6561723A6C65667422292E617070656E6428763D5A28582C224D6964646C654C65667422292C74';
wwv_flow_api.g_varchar2_table(26) := '2C773D5A28582C224D6964646C6552696768742229292C5A28582C21312C22636C6561723A6C65667422292E617070656E64285A28582C22426F74746F6D4C65667422292C783D5A28582C22426F74746F6D43656E74657222292C5A28582C22426F7474';
wwv_flow_api.g_varchar2_table(27) := '6F6D5269676874222929292E66696E6428226469762064697622292E637373287B22666C6F6174223A226C656674227D292C423D5A28582C21312C22706F736974696F6E3A6162736F6C7574653B2077696474683A3939393970783B207669736962696C';
wwv_flow_api.g_varchar2_table(28) := '6974793A68696464656E3B20646973706C61793A6E6F6E6522292C4A3D472E6164642848292E6164642845292E6164642846292C6128622E626F6479292E617070656E6428712C722E617070656E6428732C422929297D66756E6374696F6E2062672829';
wwv_flow_api.g_varchar2_table(29) := '7B72657475726E20723F28597C7C28593D21302C4C3D752E68656967687428292B782E68656967687428292B742E6F75746572486569676874282130292D742E68656967687428292C4D3D762E776964746828292B772E776964746828292B742E6F7574';
wwv_flow_api.g_varchar2_table(30) := '65725769647468282130292D742E776964746828292C4E3D412E6F75746572486569676874282130292C4F3D412E6F757465725769647468282130292C722E637373287B2270616464696E672D626F74746F6D223A4C2C2270616464696E672D72696768';
wwv_flow_api.g_varchar2_table(31) := '74223A4D7D292C472E636C69636B2866756E6374696F6E28297B572E6E65787428297D292C482E636C69636B2866756E6374696F6E28297B572E7072657628297D292C492E636C69636B2866756E6374696F6E28297B572E636C6F736528297D292C712E';
wwv_flow_api.g_varchar2_table(32) := '636C69636B2866756E6374696F6E28297B4B2E6F7665726C6179436C6F73652626572E636C6F736528297D292C612862292E62696E6428226B6579646F776E2E222B662C66756E6374696F6E2861297B76617220623D612E6B6579436F64653B5326264B';
wwv_flow_api.g_varchar2_table(33) := '2E6573634B65792626623D3D3D3237262628612E70726576656E7444656661756C7428292C572E636C6F73652829292C5326264B2E6172726F774B65792626795B315D262628623D3D3D33373F28612E70726576656E7444656661756C7428292C482E63';
wwv_flow_api.g_varchar2_table(34) := '6C69636B2829293A623D3D3D3339262628612E70726576656E7444656661756C7428292C472E636C69636B282929297D292C6128222E222B672C62292E6C6976652822636C69636B222C66756E6374696F6E2861297B612E77686963683E317C7C612E73';
wwv_flow_api.g_varchar2_table(35) := '686966744B65797C7C612E616C744B65797C7C612E6D6574614B65797C7C28612E70726576656E7444656661756C7428292C6265287468697329297D29292C2130293A21317D76617220643D7B7472616E736974696F6E3A22656C6173746963222C7370';
wwv_flow_api.g_varchar2_table(36) := '6565643A3330302C77696474683A21312C696E697469616C57696474683A22363030222C696E6E657257696474683A21312C6D617857696474683A21312C6865696768743A21312C696E697469616C4865696768743A22343530222C696E6E6572486569';
wwv_flow_api.g_varchar2_table(37) := '6768743A21312C6D61784865696768743A21312C7363616C6550686F746F733A21302C7363726F6C6C696E673A21302C696E6C696E653A21312C68746D6C3A21312C696672616D653A21312C66617374496672616D653A21302C70686F746F3A21312C68';
wwv_flow_api.g_varchar2_table(38) := '7265663A21312C7469746C653A21312C72656C3A21312C6F7061636974793A2E392C7072656C6F6164696E673A21302C63757272656E743A22696D616765207B63757272656E747D206F66207B746F74616C7D222C70726576696F75733A227072657669';
wwv_flow_api.g_varchar2_table(39) := '6F7573222C6E6578743A226E657874222C636C6F73653A22636C6F7365222C6F70656E3A21312C72657475726E466F6375733A21302C7265706F736974696F6E3A21302C6C6F6F703A21302C736C69646573686F773A21312C736C69646573686F774175';
wwv_flow_api.g_varchar2_table(40) := '746F3A21302C736C69646573686F7753706565643A323530302C736C69646573686F7753746172743A22737461727420736C69646573686F77222C736C69646573686F7753746F703A2273746F7020736C69646573686F77222C6F6E4F70656E3A21312C';
wwv_flow_api.g_varchar2_table(41) := '6F6E4C6F61643A21312C6F6E436F6D706C6574653A21312C6F6E436C65616E75703A21312C6F6E436C6F7365643A21312C6F7665726C6179436C6F73653A21302C6573634B65793A21302C6172726F774B65793A21302C746F703A21312C626F74746F6D';
wwv_flow_api.g_varchar2_table(42) := '3A21312C6C6566743A21312C72696768743A21312C66697865643A21312C646174613A756E646566696E65647D2C653D22636F6C6F72626F78222C663D2263626F78222C673D662B22456C656D656E74222C683D662B225F6F70656E222C693D662B225F';
wwv_flow_api.g_varchar2_table(43) := '6C6F6164222C6A3D662B225F636F6D706C657465222C6B3D662B225F636C65616E7570222C6C3D662B225F636C6F736564222C6D3D662B225F7075726765222C6E3D21612E737570706F72742E6F706163697479262621612E737570706F72742E737479';
wwv_flow_api.g_varchar2_table(44) := '6C652C6F3D6E262621632E584D4C48747470526571756573742C703D662B225F494536222C712C722C732C742C752C762C772C782C792C7A2C412C422C432C442C452C462C472C482C492C4A2C4B2C4C2C4D2C4E2C4F2C502C512C522C532C542C552C56';
wwv_flow_api.g_varchar2_table(45) := '2C572C583D22646976222C593B696628612E636F6C6F72626F782972657475726E3B61286266292C573D612E666E5B655D3D615B655D3D66756E6374696F6E28622C63297B76617220663D746869733B623D627C7C7B7D2C626628293B69662862672829';
wwv_flow_api.g_varchar2_table(46) := '297B69662821665B305D297B696628662E73656C6563746F722972657475726E20663B663D6128223C612F3E22292C622E6F70656E3D21307D63262628622E6F6E436F6D706C6574653D63292C662E656163682866756E6374696F6E28297B612E646174';
wwv_flow_api.g_varchar2_table(47) := '6128746869732C652C612E657874656E64287B7D2C612E6461746128746869732C65297C7C642C6229297D292E616464436C6173732867292C28612E697346756E6374696F6E28622E6F70656E292626622E6F70656E2E63616C6C2866297C7C622E6F70';
wwv_flow_api.g_varchar2_table(48) := '656E292626626528665B305D297D72657475726E20667D2C572E706F736974696F6E3D66756E6374696F6E28612C62297B66756E6374696F6E20692861297B755B305D2E7374796C652E77696474683D785B305D2E7374796C652E77696474683D745B30';
wwv_flow_api.g_varchar2_table(49) := '5D2E7374796C652E77696474683D612E7374796C652E77696474682C745B305D2E7374796C652E6865696768743D765B305D2E7374796C652E6865696768743D775B305D2E7374796C652E6865696768743D612E7374796C652E6865696768747D766172';
wwv_flow_api.g_varchar2_table(50) := '20633D302C643D302C653D722E6F666673657428292C673D7A2E7363726F6C6C546F7028292C683D7A2E7363726F6C6C4C65667428293B7A2E756E62696E642822726573697A652E222B66292C722E637373287B746F703A2D3965342C6C6566743A2D39';
wwv_flow_api.g_varchar2_table(51) := '65347D292C4B2E66697865642626216F3F28652E746F702D3D672C652E6C6566742D3D682C722E637373287B706F736974696F6E3A226669786564227D29293A28633D672C643D682C722E637373287B706F736974696F6E3A226162736F6C757465227D';
wwv_flow_api.g_varchar2_table(52) := '29292C4B2E7269676874213D3D21313F642B3D4D6174682E6D6178287A2E776964746828292D4B2E772D4F2D4D2D5F284B2E72696768742C227822292C30293A4B2E6C656674213D3D21313F642B3D5F284B2E6C6566742C227822293A642B3D4D617468';
wwv_flow_api.g_varchar2_table(53) := '2E726F756E64284D6174682E6D6178287A2E776964746828292D4B2E772D4F2D4D2C30292F32292C4B2E626F74746F6D213D3D21313F632B3D4D6174682E6D6178287A2E68656967687428292D4B2E682D4E2D4C2D5F284B2E626F74746F6D2C22792229';
wwv_flow_api.g_varchar2_table(54) := '2C30293A4B2E746F70213D3D21313F632B3D5F284B2E746F702C227922293A632B3D4D6174682E726F756E64284D6174682E6D6178287A2E68656967687428292D4B2E682D4E2D4C2C30292F32292C722E637373287B746F703A652E746F702C6C656674';
wwv_flow_api.g_varchar2_table(55) := '3A652E6C6566747D292C613D722E776964746828293D3D3D4B2E772B4F2626722E68656967687428293D3D3D4B2E682B4E3F303A617C7C302C735B305D2E7374796C652E77696474683D735B305D2E7374796C652E6865696768743D2239393939707822';
wwv_flow_api.g_varchar2_table(56) := '2C722E6465717565756528292E616E696D617465287B77696474683A4B2E772B4F2C6865696768743A4B2E682B4E2C746F703A632C6C6566743A647D2C7B6475726174696F6E3A612C636F6D706C6574653A66756E6374696F6E28297B69287468697329';
wwv_flow_api.g_varchar2_table(57) := '2C543D21312C735B305D2E7374796C652E77696474683D4B2E772B4F2B4D2B227078222C735B305D2E7374796C652E6865696768743D4B2E682B4E2B4C2B227078222C4B2E7265706F736974696F6E262673657454696D656F75742866756E6374696F6E';
wwv_flow_api.g_varchar2_table(58) := '28297B7A2E62696E642822726573697A652E222B662C572E706F736974696F6E297D2C31292C6226266228297D2C737465703A66756E6374696F6E28297B692874686973297D7D297D2C572E726573697A653D66756E6374696F6E2861297B5326262861';
wwv_flow_api.g_varchar2_table(59) := '3D617C7C7B7D2C612E77696474682626284B2E773D5F28612E77696474682C227822292D4F2D4D292C612E696E6E657257696474682626284B2E773D5F28612E696E6E657257696474682C22782229292C412E637373287B77696474683A4B2E777D292C';
wwv_flow_api.g_varchar2_table(60) := '612E6865696768742626284B2E683D5F28612E6865696768742C227922292D4E2D4C292C612E696E6E65724865696768742626284B2E683D5F28612E696E6E65724865696768742C22792229292C21612E696E6E6572486569676874262621612E686569';
wwv_flow_api.g_varchar2_table(61) := '676874262628412E637373287B6865696768743A226175746F227D292C4B2E683D412E6865696768742829292C412E637373287B6865696768743A4B2E687D292C572E706F736974696F6E284B2E7472616E736974696F6E3D3D3D226E6F6E65223F303A';
wwv_flow_api.g_varchar2_table(62) := '4B2E737065656429297D2C572E707265703D66756E6374696F6E2862297B66756E6374696F6E206728297B72657475726E204B2E773D4B2E777C7C412E776964746828292C4B2E773D4B2E6D7726264B2E6D773C4B2E773F4B2E6D773A4B2E772C4B2E77';
wwv_flow_api.g_varchar2_table(63) := '7D66756E6374696F6E206828297B72657475726E204B2E683D4B2E687C7C412E68656967687428292C4B2E683D4B2E6D6826264B2E6D683C4B2E683F4B2E6D683A4B2E682C4B2E687D69662821532972657475726E3B76617220632C643D4B2E7472616E';
wwv_flow_api.g_varchar2_table(64) := '736974696F6E3D3D3D226E6F6E65223F303A4B2E73706565643B412E72656D6F766528292C413D5A28582C224C6F61646564436F6E74656E7422292E617070656E642862292C412E6869646528292E617070656E64546F28422E73686F772829292E6373';
wwv_flow_api.g_varchar2_table(65) := '73287B77696474683A6728292C6F766572666C6F773A4B2E7363726F6C6C696E673F226175746F223A2268696464656E227D292E637373287B6865696768743A6828297D292E70726570656E64546F2874292C422E6869646528292C612852292E637373';
wwv_flow_api.g_varchar2_table(66) := '287B22666C6F6174223A226E6F6E65227D292C6F262661282273656C65637422292E6E6F7428722E66696E64282273656C6563742229292E66696C7465722866756E6374696F6E28297B72657475726E20746869732E7374796C652E7669736962696C69';
wwv_flow_api.g_varchar2_table(67) := '7479213D3D2268696464656E227D292E637373287B7669736962696C6974793A2268696464656E227D292E6F6E65286B2C66756E6374696F6E28297B746869732E7374796C652E7669736962696C6974793D22696E6865726974227D292C633D66756E63';
wwv_flow_api.g_varchar2_table(68) := '74696F6E28297B66756E6374696F6E207128297B6E2626725B305D2E7374796C652E72656D6F7665417474726962757465282266696C74657222297D76617220622C632C673D792E6C656E6774682C682C693D226672616D65426F72646572222C6B3D22';
wwv_flow_api.g_varchar2_table(69) := '616C6C6F775472616E73706172656E6379222C6C2C6F2C703B69662821532972657475726E3B6C3D66756E6374696F6E28297B636C65617254696D656F75742856292C432E6869646528292C6263286A2C4B2E6F6E436F6D706C657465297D2C6E262652';
wwv_flow_api.g_varchar2_table(70) := '2626412E66616465496E28313030292C442E68746D6C284B2E7469746C65292E6164642841292E73686F7728293B696628673E31297B747970656F66204B2E63757272656E743D3D22737472696E67222626452E68746D6C284B2E63757272656E742E72';
wwv_flow_api.g_varchar2_table(71) := '65706C61636528227B63757272656E747D222C512B31292E7265706C61636528227B746F74616C7D222C6729292E73686F7728292C475B4B2E6C6F6F707C7C513C672D313F2273686F77223A2268696465225D28292E68746D6C284B2E6E657874292C48';
wwv_flow_api.g_varchar2_table(72) := '5B4B2E6C6F6F707C7C513F2273686F77223A2268696465225D28292E68746D6C284B2E70726576696F7573292C4B2E736C69646573686F772626462E73686F7728293B6966284B2E7072656C6F6164696E67297B623D5B24282D31292C242831295D3B77';
wwv_flow_api.g_varchar2_table(73) := '68696C6528633D795B622E706F7028295D296F3D612E6461746128632C65292E687265667C7C632E687265662C612E697346756E6374696F6E286F292626286F3D6F2E63616C6C286329292C6261286F29262628703D6E657720496D6167652C702E7372';
wwv_flow_api.g_varchar2_table(74) := '633D6F297D7D656C7365204A2E6869646528293B4B2E696672616D653F28683D5A2822696672616D6522295B305D2C6920696E2068262628685B695D3D30292C6B20696E2068262628685B6B5D3D227472756522292C682E6E616D653D662B202B286E65';
wwv_flow_api.g_varchar2_table(75) := '772044617465292C4B2E66617374496672616D653F6C28293A612868292E6F6E6528226C6F6164222C6C292C682E7372633D4B2E687265662C4B2E7363726F6C6C696E677C7C28682E7363726F6C6C696E673D226E6F22292C612868292E616464436C61';
wwv_flow_api.g_varchar2_table(76) := '737328662B22496672616D6522292E617070656E64546F2841292E6F6E65286D2C66756E6374696F6E28297B682E7372633D222F2F61626F75743A626C616E6B227D29293A6C28292C4B2E7472616E736974696F6E3D3D3D2266616465223F722E666164';
wwv_flow_api.g_varchar2_table(77) := '65546F28642C312C71293A7128297D2C4B2E7472616E736974696F6E3D3D3D2266616465223F722E66616465546F28642C302C66756E6374696F6E28297B572E706F736974696F6E28302C63297D293A572E706F736974696F6E28642C63297D2C572E6C';
wwv_flow_api.g_varchar2_table(78) := '6F61643D66756E6374696F6E2862297B76617220632C642C653D572E707265703B543D21302C523D21312C503D795B515D2C627C7C626228292C6263286D292C626328692C4B2E6F6E4C6F6164292C4B2E683D4B2E6865696768743F5F284B2E68656967';
wwv_flow_api.g_varchar2_table(79) := '68742C227922292D4E2D4C3A4B2E696E6E657248656967687426265F284B2E696E6E65724865696768742C227922292C4B2E773D4B2E77696474683F5F284B2E77696474682C227822292D4F2D4D3A4B2E696E6E6572576964746826265F284B2E696E6E';
wwv_flow_api.g_varchar2_table(80) := '657257696474682C227822292C4B2E6D773D4B2E772C4B2E6D683D4B2E682C4B2E6D617857696474682626284B2E6D773D5F284B2E6D617857696474682C227822292D4F2D4D2C4B2E6D773D4B2E7726264B2E773C4B2E6D773F4B2E773A4B2E6D77292C';
wwv_flow_api.g_varchar2_table(81) := '4B2E6D61784865696768742626284B2E6D683D5F284B2E6D61784865696768742C227922292D4E2D4C2C4B2E6D683D4B2E6826264B2E683C4B2E6D683F4B2E683A4B2E6D68292C633D4B2E687265662C563D73657454696D656F75742866756E6374696F';
wwv_flow_api.g_varchar2_table(82) := '6E28297B432E73686F7728297D2C313030292C4B2E696E6C696E653F285A2858292E6869646528292E696E736572744265666F726528612863295B305D292E6F6E65286D2C66756E6374696F6E28297B612874686973292E7265706C6163655769746828';
wwv_flow_api.g_varchar2_table(83) := '412E6368696C6472656E2829297D292C65286128632929293A4B2E696672616D653F6528222022293A4B2E68746D6C3F65284B2E68746D6C293A62612863293F286128523D6E657720496D616765292E616464436C61737328662B2250686F746F22292E';
wwv_flow_api.g_varchar2_table(84) := '6572726F722866756E6374696F6E28297B4B2E7469746C653D21312C65285A28582C224572726F7222292E7465787428225468697320696D61676520636F756C64206E6F74206265206C6F616465642229297D292E6C6F61642866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(85) := '7B76617220613B522E6F6E6C6F61643D6E756C6C2C4B2E7363616C6550686F746F73262628643D66756E6374696F6E28297B522E6865696768742D3D522E6865696768742A612C522E77696474682D3D522E77696474682A617D2C4B2E6D772626522E77';
wwv_flow_api.g_varchar2_table(86) := '696474683E4B2E6D77262628613D28522E77696474682D4B2E6D77292F522E77696474682C642829292C4B2E6D682626522E6865696768743E4B2E6D68262628613D28522E6865696768742D4B2E6D68292F522E6865696768742C64282929292C4B2E68';
wwv_flow_api.g_varchar2_table(87) := '262628522E7374796C652E6D617267696E546F703D4D6174682E6D6178284B2E682D522E6865696768742C30292F322B22707822292C795B315D2626284B2E6C6F6F707C7C795B512B315D29262628522E7374796C652E637572736F723D22706F696E74';
wwv_flow_api.g_varchar2_table(88) := '6572222C522E6F6E636C69636B3D66756E6374696F6E28297B572E6E65787428297D292C6E262628522E7374796C652E6D73496E746572706F6C6174696F6E4D6F64653D226269637562696322292C73657454696D656F75742866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(89) := '7B652852297D2C31297D292C73657454696D656F75742866756E6374696F6E28297B522E7372633D637D2C3129293A632626422E6C6F616428632C4B2E646174612C66756E6374696F6E28622C632C64297B6528633D3D3D226572726F72223F5A28582C';
wwv_flow_api.g_varchar2_table(90) := '224572726F7222292E7465787428225265717565737420756E7375636365737366756C3A20222B642E73746174757354657874293A612874686973292E636F6E74656E74732829297D297D2C572E6E6578743D66756E6374696F6E28297B21542626795B';
wwv_flow_api.g_varchar2_table(91) := '315D2626284B2E6C6F6F707C7C795B512B315D29262628513D242831292C572E6C6F61642829297D2C572E707265763D66756E6374696F6E28297B21542626795B315D2626284B2E6C6F6F707C7C5129262628513D24282D31292C572E6C6F6164282929';
wwv_flow_api.g_varchar2_table(92) := '7D2C572E636C6F73653D66756E6374696F6E28297B5326262155262628553D21302C533D21312C6263286B2C4B2E6F6E436C65616E7570292C7A2E756E62696E6428222E222B662B22202E222B70292C712E66616465546F283230302C30292C722E7374';
wwv_flow_api.g_varchar2_table(93) := '6F7028292E66616465546F283330302C302C66756E6374696F6E28297B722E6164642871292E637373287B6F7061636974793A312C637572736F723A226175746F227D292E6869646528292C6263286D292C412E72656D6F766528292C73657454696D65';
wwv_flow_api.g_varchar2_table(94) := '6F75742866756E6374696F6E28297B553D21312C6263286C2C4B2E6F6E436C6F736564297D2C31297D29297D2C572E72656D6F76653D66756E6374696F6E28297B61285B5D292E6164642872292E6164642871292E72656D6F766528292C723D6E756C6C';
wwv_flow_api.g_varchar2_table(95) := '2C6128222E222B67292E72656D6F7665446174612865292E72656D6F7665436C6173732867292E64696528297D2C572E656C656D656E743D66756E6374696F6E28297B72657475726E20612850297D2C572E73657474696E67733D647D29286A51756572';
wwv_flow_api.g_varchar2_table(96) := '792C646F63756D656E742C74686973293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4166938440413263)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'jquery.colorbox-min.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000320103000000A73523C900000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001849444154785E95C1010D0000008230A31B9D066CFC330F0526820B01E3EC9A99';
wwv_flow_api.g_varchar2_table(2) := '0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4167634127415279)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1border.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000150103000000BD9C164700000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001749444154785E7DC1210100000083B0477F7434866DD7007AAA03813389C49000';
wwv_flow_api.g_varchar2_table(2) := '00000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4168331107416632)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderBottomCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000656565B7B7B7000000000000CFCFCF000000000000000000000000FFFFFF94C88E050000000C74524E538000789FC75830D7';
wwv_flow_api.g_varchar2_table(2) := '386810181AE7B20E0000005349444154785E85CAB10D8020180561125DE05991D83088235830028D5B50390133D0B18503FC4311A289579878D5579C7B32B3EBCB19DEE019763B3CE5E1FF021CE1042FB08755E00AAFE1B51AAC13D6716F1D361416074A';
wwv_flow_api.g_varchar2_table(3) := 'BD57B20000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4169029166417565)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderBottomLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000656565B7B7B7000000000000CFCFCF000000000000000000000000FFFFFF94C88E050000000C74524E538000789FC75830D7';
wwv_flow_api.g_varchar2_table(2) := '386810181AE7B20E0000005549444154785E9DC6B10D80201005D0CB55DA791BD858D938822338026E60C2048EE0086C426179434142E05F2879D523558D54F47FCC0FFC27FCC43D0D5ACD2F7387F2824FE61FCE01DFA57D0EEDFC4AFD764B7E02967416';
wwv_flow_api.g_varchar2_table(3) := '07AA8DD7170000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4169727225418424)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderBottomRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000000101030000000B9E775800000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001449444154785E0580B1090000004094FFFF350A6C010200FC69A300E400000000';
wwv_flow_api.g_varchar2_table(2) := '49454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4170458268419238)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderMiddleLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000000101030000000B9E775800000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001449444154785E05C001090000008020FF8F8E100302FE00FFBFDBF57F00000000';
wwv_flow_api.g_varchar2_table(2) := '49454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4171155680420465)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderMiddleRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000150103000000BD9C164700000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001749444154785E7DC1210100000083B0477F742C8A6DE50E18AA0381149316F900';
wwv_flow_api.g_varchar2_table(2) := '00000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4171853092421653)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderTopCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000000000000000000000000000000000656565CFCFCFB7B7B7000000FFFFFF3B8665F90000000C74524E538000783058106838';
wwv_flow_api.g_varchar2_table(2) := '9FD7C7183A2073AD0000005449444154785E9DC6A10D80401044D19104070681D9121014400D0834355007256C091441015B147709D99920F9E63F74A5D950AB3ECA5E6F488F46AFA0777A00EBC59378111BFED5F89DBE22DD067D8A5D1C1F3F3EC015AD';
wwv_flow_api.g_varchar2_table(3) := '86FEAAE00000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4172550504422867)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderTopLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000000000000000000000000000656565000000CFCFCFB7B7B7000000FFFFFF96FF543C0000000C74524E53800078583868109F';
wwv_flow_api.g_varchar2_table(2) := '30D7C718E289AB9F0000005249444154785E8DC6B10D406010C7D17F2EF46E03895263052318E1DBC0086CA0D31A452D379484E27E85C2AB9E1EDDEAEE8D5E36E65597BC7ADC4A5E135EE1866BC107BCD51FB1E371E0171E33BEE1E7C76FFB181607D27D';
wwv_flow_api.g_varchar2_table(3) := '175A0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4173148132423917)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1borderTopRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000B0000000320806000000FCCF518D0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000AEF4944415478DAEC5D5B6C14D719FEC137ECD8E035361787C66014';
wwv_flow_api.g_varchar2_table(2) := '1A2EA5126E5A356D95982E455C525AA4A86DA2A65221CB53D4F6A1AA5B449F1A8C1FA884821F705BA9A18E4915A04A534C2319DC848221C9D6A1D4405C2EB5C1C6368ED76137BE81E5CE77D8339C1DCFCCCECCEECCEE2CF349471EEFCECC37FF9E6FFEF3';
wwv_flow_api.g_varchar2_table(3) := '9FCBFC338388F690054C4D4DFD823CD8811912E2ED532595CA68F1397C7D21A95C8B96A0019D4C1934BACECAC5643F8C0A191B1B6365D6AC59ACB80810AE3F05A215E18B5E07BF96162342B60B6921E05BB76ED1F0F0308D8C8C4CFBAEA0A0808A8B8B69';
wwv_flow_api.g_varchar2_table(4) := 'E1C2850F330744F35CD4E3A613F87541CC6F46BDB3B3CD552A430854F6D5AB57E50A2E2C2AA2ECAC2CF9FB7B939314098765412C5DBA9489C02A47494989EC71F3F3F369747454F6C843434349E148821DCA10022209A4D8EB1A0D2D1A9422B63B844899';
wwv_flow_api.g_varchar2_table(5) := '80AF5FBFCE44830A2F292BA782FC5CCAC99A11D3A443587727A768647482866EF7320140844B962C31C581637C3E1F65E5E469724CDE1DA7502824EF6F94E3C6CD9B34D0DF6FDA8E79F3E7D3E7162D8A2760B7885753C41919037361A1128B0A0B256F34';
wwv_flow_api.g_varchar2_table(6) := '47753F16A34A7F8B1EC9A7BCEC290A47224C2C403C81891CC5BEB9EC1C7A1C924F6602CFCEC9B1C461D50E0D11733CE722F18A214543C6C6C0686E8D084B0934B9101880CA8747D56A86458EB2D252C31D355C4B4E56A9698E44ECB82FFC62BD9106B7A1';
wwv_flow_api.g_varchar2_table(7) := '327AED8E74EC663A6D1D624534B7A838A3952E0A0CC7E1781E736A71200CC0BE664719B03F8EC3F1F1386CB6C3EFE2811EC7AEDD5101A397CEBD90E87510479E3C7992156C739C3E73867D86BFA207E3C7F2F3A971141495E876C62E5DBA44E1CF4635BD';
wwv_flow_api.g_varchar2_table(8) := '248E8FC7A1B4432DC4D0F3C43A7654B92C74D01A6ACB2C01A3D985D7C108404C654A4DF0952B57A8ADAD8D8E3737336141B4FF686D659F95F862EB921F8FF3697120D68C77331D7AFD4F31378C087EBC1E87D20E11478F1E95AEFDACEE35E8D85149EE47';
wwv_flow_api.g_varchar2_table(9) := '65C60918BD6F0C31299B7534A91B366E64DBB76FDFA653EFB6D299D3A7D9FFCB972F6745D9CCA389571B6FD5E28060E111798168C0F5C6A143AA9ED20A07176353D321E6E12391700CA7924787C313703A8F42A801BDF167AAAB99D76D6F6F679F959595';
wwv_flow_api.g_varchar2_table(10) := 'D1BAF51B54C565161014BCB912E888EDDCB993B66FDF4E6BD7AE35CC218EF38AA1106E88898909F9666C6A6A92841CA1AEAE2EAAA8A8A0DADA5A231CBE0C10B02336CC4C85655A1557B5660DE5E6E6B20AEFE8E8A095AB5699EE20191520840B8ECECE4E';
wwv_flow_api.g_varchar2_table(11) := '1A1F1FA7FAFA7A6A96C217A3C0E484C8010F2F8A17801DDDDDDD3287870CF0C0F7EEDED5891BFF4267CF3E881BEBF7EFA7952B56989E1953E340D30E3185C3615531AD5FBF9E3646C3182B1C982286076F68B83F043A3838E8A92B534308BE9046443018';
wwv_flow_api.g_varchar2_table(12) := 'A423470EB3ED6DDBB651636323135A5D5D5D4CB3CB8F37CB81E6FBE9A79F91FFBF70E1DFCC33E6E5E54D0B1FAC7254555551201090455C5A5A1AC3A99CE830C26115D275F8A4E297AEC9542C2AD5C335E9FA5BA412F204AC007AEE68BA314120563CBCE3';
wwv_flow_api.g_varchar2_table(13) := 'DEBD7BD9F6B265CB98279C2379DDDF4A9F4164E8D16FDDBA35A6E2F934B4510E880B85430A4D595CBA6BD7AE699D44AB1C9CA7A6A686F64BAD07C2A1E79FFF81EE0DA0C591088E1D3BE6977E434BC35810FC810307025BB66C096EDAB4A9C513B0385C26';
wwv_flow_api.g_varchar2_table(14) := '89123D6E2CA211C3828E8B1769F3E667D97675F57D8FF5B5A79EA2FEBE3EA992C75911C117E1A885169C03D3B57AA147C5E20A76D368AD0EC3F1F138947670600A1A374673F371DDDF43CF8E54885704CE219D8BD25DC48E2FE641A8005859F5C5BD359F';
wwv_flow_api.g_varchar2_table(15) := 'BD123D6A2A38E039710358E540C70F378282038B792CD509C20678CF640A64C78E1D0D09841335762FE6717C1402A202B0F24B6B264C0BD81FC789E789C7A13611114F58463920BE44ECC0F17A1C16049CF4295C3BCEE9EA4E1CBC1506EFF9FADB499D05';
wwv_flow_api.g_varchar2_table(16) := '336AC2E2CB1DF58E5172186DA613E1B0C30E2BF16BB2EBCB8E73BA7E14822F534425A223835810D3AACA477CF8A33FF89E3FE96074ADAEC8212E79D4E21097385AE1B0CB0E0F6928605EF9E8C523D6E453A9A8540095CF8798442F6A36A61539204E14CE';
wwv_flow_api.g_varchar2_table(17) := '2122591C76D9E1210D05CC9B617460F8B36462258B4356893CAF96291C1ED250C01CA8545EB1763D312C72B8D90E0F692860119952E19E709DC14CEF27F0E009D8838787398410C74695E08FC427DA6B7722B1891376784823012B1382888947C48E10DF';
wwv_flow_api.g_varchar2_table(18) := '27194947301EAC9674A4B7B797956470D86187873413303C22046326210804505E5E6ED8531A4D9E8267F2440E33930C4ED8E121CD04CC2BDD6C421034CF380E8857F94E244F71C20E0F69266034B7BCD2AD2604C1F198B2B53BE948BCC42676DB611658';
wwv_flow_api.g_varchar2_table(19) := '8C9EECB50B38A7370A2120D18420109591C4264E244FB1DB0EB3C09314C9AE2F3BCEE95A016B250439FCF776DA77B09595B6F6FB373C961C36FCF99FF2E7FD839F4E3B3691A423E0ECEAFD44D34B268B43CF13EB7158145BA8B9B93969299D70AE747FB4';
wwv_flow_api.g_varchar2_table(20) := '282D129B3CB9FA31EAFCDF002B475BCE33B1BE73EA329DFFB8877DE69B5340F34B1FC49746129B14CED66F967B068669FFEBEFD1E56B7DAADF1BE1D04A6C829BAFB6E11D6A7DBF53F71AF438AC024F502443C43887F74891023CADA8728AB5A27C2E6DF8';
wwv_flow_api.g_varchar2_table(21) := 'C60A3A7EEA22EBA9D7379DA24F863F63DFCD2D7E84BEEB5F3DAD53A45CEFABE4C048800878767E4E00DBE07AB5F15DDABAEE8BF4CDAF3E619A436DAA185EFD0F87DB642EF10601DF9A958F19E24854C4814020E83DD469076156966AC56FAEFE025DBD31';
wwv_flow_api.g_varchar2_table(22) := 'C83C2EAFFCB1897BB4E37B5F9F16631A5963A0DCE7FD0B5DECDCD3BCE99D51FAF5ABCD74E2DC7F69F74F9F35CCA166076E12B420102A076E10D8D17D4BEAF40D7C4A1D6FFFCA941D898413527933D347211CEFC461E2400BDFDFB886FD8D8C8C5367D7A0';
wwv_flow_api.g_varchar2_table(23) := '1436CCA647E7DB33E00FE17E74B9873EFAB89786C363F4D6890BF4F26F0E5BB6E35F1DDDD4F8F60731E2857061C7D9F35D4CBC1E32C003EB2536D9D7F81E7DF89F1B14898A00A27AF1DB4FD213950B12E6B81319A39B7DC334327E8F86240F0F7189F8FC';
wwv_flow_api.g_varchar2_table(24) := '927954F392DF32C7E38BCB68F1A373A5EBEFA621E9E6B8131E95EDF090411E98792695841E07DF3AC7048B4A2F9FF7A0C3F6F22B47A63D346934E988889C9C6C2A9E9D4FE56545B4EAF10554989F2B7FB7F62BCBE8B5DA1762BCBD590E84393FDFE6A7A5';
wwv_flow_api.g_varchar2_table(25) := '1565CCDB72F17E69E5A29862D08E500668CB111BD222B1093A3A75BF3FC1B621AC3FEE7E81F6FCAE854E9EEB6462A895B6C5F8D44AD2919A97D6C5ECF7A39A83F461C74DFAA1E4E195DF59E500709D5F5E55413BF7FD8DFDFFDA9E17756F000D0E8C2556';
wwv_flow_api.g_varchar2_table(26) := 'B95CC08E4C8038EA81F9B8274FE8217BDFBF7E207BA85F06BEC53CE1EE9F6D923FEBE90B514FFF83A1A678894DD43894985D5840AFFC64B3AA7813E5F88E7F351DD9F7E3182F6F92E31AB91F8ED89092C42636250489E100F4567D212CD19A414B566213';
wwv_flow_api.g_varchar2_table(27) := 'DC745A9DD038894DF017BFAF5BD3AC227CA88BEA24B3129B601556321282E03C5A30923C454BBC4693A718B1434BBC06ED6821F7C2B16B777C14021E4B7CB120CD5B60682D012A7D70A04F4E08A2B78ACB89A4230ED8112477BEA9C8D03B945D2B604099';
wwv_flow_api.g_varchar2_table(28) := '100442C1D4AF9A0050E1913BC30925367122798A4D766022C26D2F3A7474F224A5AF9AE5EB6979CF1EC2C28B0631CB8589028CB54218FC31202B8BC0C57816B023E94892EDF05E35EB1601AB09402BDE74C3CBBEF96B67B5A0F37A593D017311A7E3CBBE';
wwv_flow_api.g_varchar2_table(29) := 'C5B041F565DF0F8580951E53395C956C38917424013BD404CC8198D89F46DE3814EDB00575749279EF4AD683130F3B3A9174C4263B828ACE5D650AC41C8A7A5C473B6B5AF8BF00030015B9F633044DE3E40000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4173845544425145)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFFFF5500FEFBFAFEE3D6FEE6DAFEFCFCFED0BAFEAA80FEB08AFED4C0FEF8F6FEEFE8FEAF88FEA87EFEBFA0FEEEE6FE9F70FE8B52FEAB82FEECE4FEF6F2FEA77CFEC0A2FEC8AEFE7836FE7B3AFE7F40FE9B6AFEE7DC';
wwv_flow_api.g_varchar2_table(2) := 'FEF7F4FEA67AFEC3A6FEFAF8FEDAC8FE7C3CFE9C6CFEF0EAFEBE9EFEA478FED3BEFEE0D2FE7734FE7A38FEC7ACFED8C6FEDCCCFEF3EEFEE2D4FE7430FECCB4FED2BCFEC4A8FEF4F0FE9E6EFEB692FEE4D8FEEBE2FEAE86FE6012FE5F10FE6C24FE5E0EFE';
wwv_flow_api.g_varchar2_table(3) := '732EFEBB9AFEEAE0FEE8DEFEF2ECFECAB0FEBC9CFEB896FE9662FEB38EFEB794FE8346FE874CFE8A50FE8244FE864AFEB490FEDECEFE8448FE8042FEDFD0FED6C2FE884EFEBA98FE661AFE6F28FE7632FE6316FE6214FECFB8FE905AFE8C54FEC2A4FEA0';
wwv_flow_api.g_varchar2_table(4) := '72FE8F58FE935EFE9764FE925CFE8E56FE6B22FE6A20FE681EFE702AFEDBCAFED7C4FE9A68FECEB6FE9866FE722CFEC6AAFE6418FE9460FE671CFEA274FEA376FECBB2FE6E26FEAC84FE7E3EFEB28CFE5C0C00000000000000000000000000000021FF0B';
wwv_flow_api.g_varchar2_table(5) := '4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904090500';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90409050000002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F90409050000002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F90409050000002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90409050000002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90409050000002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90409050000002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F90409050000002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F90409050000002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4174542741426465)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB86D000000644944415458C3EDD9B10DC0300CC4C01F41237B438FA21198C6459A944114809CE00075AF240950C0029AEFEB63A9DC709B796DA072B4535B1972D6C77387E1';
wwv_flow_api.g_varchar2_table(2) := '09142850A0408102050A142850A0408102050A1428F055600FF6F52F26E0D923FAF437C405F1FDCBC98CD47AF60000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4175233467430725)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1loading_background.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000001E0000001E0403000000C91EB39100000030504C5445FFFFFF0707070808081414141717170000000000000000000000000000000000000000000000000000000000000000006E6A76E400000041494441';
wwv_flow_api.g_varchar2_table(2) := '54789CECCEA10D002010C5D0AE503620B7C1850DD87F2724F91A8BA979A6B48E75C3D4DA372437C993644996644996E44172F1FF9EFE0E000000FFFF03002A7338C822DD04790000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4175931095431750)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t1overlay.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000007D000000320803000000465024AE0000004B504C5445BFBFBF9F9F9FEFEFEFFFFFFF8787870F0F0F3F3F3F7F7F7FDFDFDF808080000000CFCFCF979797B7B7B76F6F6FAFAFAFE7E7E7F7F7F72F2F2FA7A7';
wwv_flow_api.g_varchar2_table(2) := 'A78F8F8FC7C7C75F5F5FD7D7D74F4F4F00B3460C000001AA49444154785EEDD5D96AEC300C00502DDE9D7D96F6FFBFF47AC284D2B1CC44507A1F6A3D2460111D142205F87F46D7BB7E9381DBAA03C2225384087C4324495F8728037110F875300F643175';
wwv_flow_api.g_varchar2_table(3) := '126216F5102332C618047D31B1A5C702D54439DD1F0221352AF55CF0888897EFC88C88255175B3BB263F2E8BA0C7CBAAD1211EF1D2F711A3C4C71A3F6A0D745E1F634B7FC72F2CEBD1D0691D7E5E1FCEEB9CDFE959F9E671E5B3FA516C0480974A00E36E';
wwv_flow_api.g_varchar2_table(4) := '48B881E657372B278E86F6C40DA49CB8CC4A9DD7B9A18BE3B398E7B6117A3781B57A7BD3CA9B8BE8B8550AB11804F0C11F00D4FF715DFFEDE87AD7BBDEF5AB0C5C495932CB5470CEF3D5B920E9B42519489BC0D3661F48B675D227147548C9B14B09043D';
wwv_flow_api.g_varchar2_table(5) := 'DBD4D253816AA29CEE0F79213529752C7872CE7D7E47EEE5A824AA6E76D7E2E392053D7D9246F7E98897BE8F98243ED5F8516B0BE7F529B5F4777C66594F369CD6FDCFEBDB799DF19D8ECA37EF88CFEA47B1C97BFF52C9FB693724DCFAE65777574E5CD8';
wwv_flow_api.g_varchar2_table(6) := 'DA13B705E5C4212B75A67B4317C727DBE7B6117AB7C05ABDBD69513C0DE1B8554A603182F733CFDE87BFF88FEB7AD7BBFE0F185E5A60ACCE5D1E0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4176656099435381)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t2controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000000000E2E2E20303032323232020200101013C3C3C7070706767673737370707071313136868687171715353531515157E7E7E9999996E6E6E1717170A0A0A737373515151474747B1B1B1AEAEAEA9A9A98383831E1E1E';
wwv_flow_api.g_varchar2_table(2) := '0808087575754E4E4E050505303030ACACAC818181111111555555777777383838272727B3B3B3B0B0B04848483131312C2C2C0E0E0E252525B7B7B74141413A3A3A4C4C4C0C0C0C8080806060602121211818186A6A6AD1D1D1D3D3D3C1C1C1D5D5D5B9';
wwv_flow_api.g_varchar2_table(3) := 'B9B95858581A1A1A1C1C1C1010104545455757575C5C5C8A8A8A6363635E5E5EA3A3A39E9E9E9A9A9AA5A5A5A0A0A06161612A2A2AA1A1A1A7A7A72828283535359C9C9C5A5A5ACACACABEBEBEB5B5B5CECECED0D0D03E3E3E9191919797975050507C7C';
wwv_flow_api.g_varchar2_table(4) := '7C9393938E8E8E898989909090959595C3C3C3C5C5C5C7C7C7BCBCBC2E2E2E333333858585404040878787BABABA4A4A4ACCCCCC8C8C8CC9C9C97A7A7A797979434343C0C0C06C6C6CAAAAAA656565D7D7D700000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4177353296436666)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t2loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000620000008208030000008A3FEDBE000000D2504C5445FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666664E4F504A4A4A2929';
wwv_flow_api.g_varchar2_table(2) := '2919191A101010080808EFEFEF5A5A5A6B6B6B87898B7F80817B7B7B7677787373736E6F71EAEAEBEAEBEBE6E6E7525252DEDEDF4546474242423A3A3A2D2D2E212121BDBDBDCFD0D2333333C5C5C6D2D3D4ADAFB1A7A8A9A5A5A69999998F90928B8B8B';
wwv_flow_api.g_varchar2_table(3) := 'E2E3E4838384CCCCCCC1C3C4DADBDCB7B9BBD6D6D7B4B5B5F7F7F7FFFFFFE0E1E2D8D9DAC7C8CAA9ABAD939394ADADADA0A2A4A1BA27710000000F74524E5300112233445566778899AABBCCDDEE462AF5990000052F49444154785EEDDA5797B2380080';
wwv_flow_api.g_varchar2_table(4) := 'E1D00795848EBDF73ABDCFD776F7FFFFA50DC62102A36008672F76DE9BB970F43111029E0854703A4956AE20CAA8A6C9B2044EA7822A389FA09D05A00232AA0224838CD4734310B20419016464FE171D8747003F1A83982508060279DE491591AC8E1B0A';
wwv_flow_api.g_varchar2_table(5) := 'A3A68B485AA650432181A09A412844703BED3636EAF7F71D22C02C4185881018A968F1A4B88148F376ABED8E9ACD9E47884A1C90B478150C44443A4339260C6AB41E1F1BFE57F3A418281D214EA5273F0C62B4DB2616D2848E507E821A6962D2E974BA6E';
wwv_flow_api.g_varchar2_table(6) := '8220020B81941431E9F5CC6EB7E1A60805B111469298361A75DFC18C97240C46024971C233CD918F90D3685884880E7609B1126AE2FC5E5858C00686F689748D6124E84488E8ABE80AAA1527C0D55784CC9500B513D3C89110F4040055C089A0C9956340';
wwv_flow_api.g_varchar2_table(7) := '1701478226C987E8EBF32668EC84B3E0412C16A789756FC683589BF334112D419C0873FA25E14F4D7E0436D2846FE1071A6B1EC4DCC4597E92F0ED7A4898B3309795F09C39AE6E868DFC38E159754C60A3D1EB76BB33566256DF6712C3A30411A8C14E4C';
wwv_flow_api.g_varchar2_table(8) := '47D4C0799470ED1125B0C13E8A51CA20846B59A398518048180E215CDBC604C109B22E4E502324D698881BEC84450C8A4CF6843F4B1A05888461F921418C882F4A500337F5A383766E1FF145083B342264460F5A6A90E6ACC4DAA60611288116C786CB4A';
wwv_flow_api.g_varchar2_table(9) := 'B83631F6C822B90CBA7B7FCE65A5DD238BF462EE4EB0E1F0201C3C10DB43690279139B136147424450830BB1B0A7444813C89FF121663E4A12D4F07910FE7F771F553EF14D7C136A5E426526C4BC84C84A5441EEAA8C84949F90D808155C90CA404022E4';
wwv_flow_api.g_varchar2_table(10) := '37606E827EE9BD305187E7888A26C7920053921C4BAB4444550425255609A18312D343A20A4AAD8A09B15C4244400725A703A56C42015AD984068CB20903A09287A12180A054A620414C20A8942728F0B046554A42E4CAF14A5B8DA7319C90A2568D9775';
wwv_flow_api.g_varchar2_table(11) := 'BDD085CB0041BFFCAA57BBC8106A28836036A8C0425C72C668888D80F909C8482039AF207FDF991720BE896FC2BB337910E6DD49C25B0E3A3C88EEE0D98B1354E8F3213A83801849C2791BF6033E4410049B799A70B6C3E12068F2201E83E0E363384F12';
wwv_flow_api.g_varchar2_table(12) := '93D5C3B03F0882F7D7E57269B11293EB3F7FEF7641487CF4A77162F4327E180EFB980F6BB312D7E18B0C08F1E347FD98A8FF7A19FF24C3E0476083128F6F94087811D8F8B8FF245ADBB7B797F1F88118B80E3B11BD4FD22D21BA4FABED6118D8181422C2';
wwv_flow_api.g_varchar2_table(13) := 'A98819CD63E2606064D06527C84C45464008D45A916160638FF48B10641887B0400854C7C4C1089121337143662232EAF4A0B5881122A1528820C680089440D3CDC1D8D763256EA3C9C6C838B145E2EC8D5F4F37B85B8795706E6FAEAFAFDF8621F2324F';
wwv_flow_api.g_varchar2_table(14) := '2D83CF5B8C34782C83AD70204B27BD987BD7ABED960BD1C393F51ADF22A1C68A0F31FEF97A6A8BA4B532F910F7A7EF40BA160F62D4FEBFDDAAE972CEF402A390D41ACA485784A213A5C073404DE2F15948F08C20F0F9B8E508700930FF140C81D7115541';
wwv_flow_api.g_varchar2_table(15) := 'A4F6B3130A7FF5477483A32021C77FDBB8D83C6DB071377C7827022CFEA55848FCD8D5FE8D8DE678FC9EFCB1ABC04AE8E0B31A35F0F571E7A54E4D9D8D80427C938518BF9FF0185284005908288134D1593E6F36769A0012BC9CA8518112BDF7D7DBDD72';
wwv_flow_api.g_varchar2_table(16) := '39A104356A971186AE508012E69FDD9DBFF8F3FE3EA5044DD18DD384A18A7936BC16FFDC347DFCE766779F6BB749548D4F42CBBB58CF5AFE9E6AFB79F7FD3442A8203301B2EEFBA921A1315F73A47CCF048600F2A4B3EEFB09105C817C5D2500A8E47D22';
wwv_flow_api.g_varchar2_table(17) := '9041CE641D52C0D084DCCFFB17EA19E02C7345FE160000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4178049845438289)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t3controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000000000E2E2E20303032323232020200101013C3C3C7070706767673737370707071313136868687171715353531515157E7E7E9999996E6E6E1717170A0A0A737373515151474747B1B1B1AEAEAEA9A9A98383831E1E1E';
wwv_flow_api.g_varchar2_table(2) := '0808087575754E4E4E050505303030ACACAC818181111111555555777777383838272727B3B3B3B0B0B04848483131312C2C2C0E0E0E252525B7B7B74141413A3A3A4C4C4C0C0C0C8080806060602121211818186A6A6AD1D1D1D3D3D3C1C1C1D5D5D5B9';
wwv_flow_api.g_varchar2_table(3) := 'B9B95858581A1A1A1C1C1C1010104545455757575C5C5C8A8A8A6363635E5E5EA3A3A39E9E9E9A9A9AA5A5A5A0A0A06161612A2A2AA1A1A1A7A7A72828283535359C9C9C5A5A5ACACACABEBEBEB5B5B5CECECED0D0D03E3E3E9191919797975050507C7C';
wwv_flow_api.g_varchar2_table(4) := '7C9393938E8E8E898989909090959595C3C3C3C5C5C5C7C7C7BCBCBC2E2E2E333333858585404040878787BABABA4A4A4ACCCCCC8C8C8CC9C9C97A7A7A797979434343C0C0C06C6C6CAAAAAA656565D7D7D700000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4178747473439421)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t3loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000003200000062080600000012B180460000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000003C34944415478DAEC9AC16EDB300C404547E9760AB0F617761FB0EF';
wwv_flow_api.g_varchar2_table(2) := 'C87DBDF5BA4FDAB5B7EDDEDFD8BE60BF900CD8696B6C695161171A434A942379992A0284950491F44C52A62883B5560180CA2CB10E6DCEC11C832E3C6160002037A0CE3079C8046ED1EFB614080861A46036020129403A110202DFC14C9069D296810009';
wwv_flow_api.g_varchar2_table(3) := '8C9E0101C2B61402B781684761F44C88984A02DA0654111609C26821843FC1CEFBDCA12B0544816035E83AB521E082229090053A4F81688760420066FCFFD4A6029D85D189EE344D7AC5B4E7804C3A785698C448DD4C27C4863FE915A11C0C078221BAF1';
wwv_flow_api.g_varchar2_table(4) := '3AA0B18D245674E479805D6982D0E88A81A6FF29E279E0BBD3E0417404BC25ACE3670756EA5A80AC314DFE2FDD6EB76FEEEFEF3FCD492DEEEEEE3E3E3C3CFC3836FBC022117DB6004A1AB9C0D608623DAADEED769F379BCD5BADF5660E48DFF73F8FF2FD';
wwv_flow_api.g_varchar2_table(5) := 'E6E6E67684398CDA8F3A8C578356B5E7A5FA89C10301C6A57C4BAC7D7510D7D7D7EF7364B0FBFDFEDB087340DA7B2E8861460EFBECC7B1651707B8CE09E1C4F5E5FA24E2AE933C703B417288037DE562C2B953EE4D8CEBD3F51D5809D9C414BB16E55653';
wwv_flow_api.g_varchar2_table(6) := '5C5C4D7ABC735F725A8370B10FC7E6A3A77EBC9CC40AE55A8A587E29AB9416E97329EA5A1059C54A4B17890DE0402031DF2A2D29193528C1DDE592C6252C9274033BE11675496BA48C09A11839B772B244394914ECFFA5CC01B10BCCCB9E0362231DDB85';
wwv_flow_api.g_varchar2_table(7) := '2052C6B4528B70FBEBD262224509D62236B1DAB1A43570C9889C6717E824B4C75EC22226006353823DB4BF2E2D031A33EA0D5D626C3C81B8EDA9DBD9E59EBDEBD3F5CD65B921182A8D574CB1C1DF1D1649E5510A4FED120D51F722D3F8506C0C9EF66E5B';
wwv_flow_api.g_varchar2_table(8) := 'EA06CE0C718BB6B6432456EA2E3E28A6C67BB25F2F580EC24A59C6E0D58B0389ED0E4B14E806EFCE0F4CE5C470EE459D215A66602A2B3D59CDCE2C990E84050C530252D2DA2F556B35C48210839853C436C4F2AB224F7712245430C6D571FF3820C7B182';
wwv_flow_api.g_varchar2_table(9) := '95B892F45821740E81ADD12190DC073D4A986F054FACB8434AE34D94FA2EC7D19BD8121290989B5955E63054A54248403818FC9D52E71D4F73131641484128370B1D52CE7D6140FADB59208A81508CCBE5D8A7177B85831A2076900F89935BF4A51AC9C0';
wwv_flow_api.g_varchar2_table(10) := 'B1F748B26F979F72AD975AD7BA4859BA9E5B4C74036920E540560DE4C240742D20EB5A40AE6A0179D5402E0CE47515B9D66EB7FB5A0588AD248F7FD1E7EC0DA481349006D2401A480369200DA481349006D2401A4803292F3AE77B89FF52DC21CFBB2A2C';
wwv_flow_api.g_varchar2_table(11) := '72D45FB580FC6E201706F2580BC8A11690BE1690A1815C90AC54256F3E54055285FC11600099D96EB6044F96220000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4179442297441789)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4border1.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000320000000108060000009CD1FDB20000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000004C4944415478DAB4C6DB0980400C44D1597C7E279D58928559929D';
wwv_flow_api.g_varchar2_table(2) := '24DFEB8B3842041BF0C2815B22028501F86A524B1DF534A4D1CC161199F043EEBEAAEACCADB4A59D0E3AE94AF17ABA051800996F19FFA6CE6F580000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4180139062443255)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4border2.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000190806000000F090447F0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000003B4944415478DA62FE0F044C0C40401AF1EEDDBB7320863E88FB03';
wwv_flow_api.g_varchar2_table(2) := '44FC8413BF40C46F6620C10C2298400423480C6CD17F10978119682D0340800100F83E11DAD6E5713A0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4180836474444428)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderBottomCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000017B4944415478DAB4964F4AC43014C6F362FD8F4845A4A2880B5D7A';
wwv_flow_api.g_varchar2_table(2) := '0C773D8F9BAECB78062FE101BC457B0517DD155C77F27C91A63CC3CB246D35F0233030DFD7EF6B5E6614222A5A40E8918C38208E8933E28228883BE291786ADBF60D672C2B3A77E148F2D2DE9763C2B8E0A1944E7C6A8ED15A2F4A820103D10800706D12';
wwv_flow_api.g_varchar2_table(3) := 'DC6160D62489556518DBBEEF3FFFC2044329AC495DD71FC3307CA59F479C924BB372449C12E7C425713DCECB43D3349BD439F14D9CD11EB14F1C1227E350E6C4157143DCDBC1ECBAEE7DEE3062A032C3F62D31388AA278A1E97F8D550736091D493F8D7B';
wwv_flow_api.g_varchar2_table(4) := '5F3C9923F329CB32AFAAEA39CFF35B638CD504BB3B4DC9849BF1F7A43D23BE73F8C3FD68654245E0D56778F2409DAE4ACD4CA656B21D4718BCDD083741CC2068221928211537E115C19224A1FBCC899B80F8546D16B956C013865114BCB446104F328955';
wwv_flow_api.g_varchar2_table(5) := '8782280807246A1232F23F5321835413A93AA9465C6BA202062A50E36213490422BFFBB0D44425FCF9F8756B00BBEAFF6D7D0B3000E71323D3EAA8BF120000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4181533886445667)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderBottomLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001784944415478DAB495CB4AC43014869358C71B83282215415CE872';
wwv_flow_api.g_varchar2_table(2) := '5ECF3728FA0CCE43B8999D6FD1F6115C745770A5D226FE296909E1E4E625F0D19469F24DCEC94998CA684DD33C33C636E01EDC80129C833538022B500061E0183675729A3264B55C892B53916FF22542083D503A92E8EAB2249C73151028DF6A7EBA1219';
wwv_flow_api.g_varchar2_table(3) := '10A95FADA4EFFB373C464B245342962C1986E1BDAAAA574792969BD41AA9EBFA119FDF99FAB80217E0149C8043AA46CCFC6992AEEB5E4C01DE826B7009CE4C111E8303B00FF62CC12211B110A1CA9FCAB27CD0AF16A3152EE909D5F25EB46DBB5DB61A76';
wwv_flow_api.g_varchar2_table(4) := '8FDEA6FAA993AC73B0DBED7A4240E5C5B78DA7256DAC1FED7F373A0CCE33B6CBD41C2E9DA80FE2A8B0078F04D22360D48AB4E493905022AAEF86890C97967C05246E8547C343896C09F31417B58BA4E734F6267E4DC45225120D954E3C37371A0B88627D';
wwv_flow_api.g_varchar2_table(5) := '163AB766C92A70E184268B0A6C4911BAD542959C7215CF129178DDB29CC97D129529CA92F0BF982C2899CEFB7F6EDF020C0055B087FA515FFC4F0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4182231083446962)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderBottomRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000190000000408060000007BA194260000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000000364944415478DA62FCFFFF3F032310303030206366286601625620';
wwv_flow_api.g_varchar2_table(2) := '6603627628E678FBF6ED3C2121212306220113031DC0F0B10420C000308407049528EC860000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4182928495448161)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderMiddleLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000190000000408060000007BA194260000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000002D4944415478DA62FC0F040C44024646460D20F50F88FF22E13F48';
wwv_flow_api.g_varchar2_table(2) := 'F41F34B97F40E3FF3131D0010C1F4B00020C008D50140553B6B0B30000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4183658675449292)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderMiddleRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000000400000019080600000016B98F3B0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000003B4944415478DA62FCFFFF3F03326084623860214F8099A0000BBA';
wwv_flow_api.g_varchar2_table(2) := '002BBA001BBA003B41010E14BFBC7DFBF62C8AC07F34EF3231A081412B0010600015860B0107A9792A0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4184356087450575)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderTopCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001094944415478DAB496510EC2200C86F9A1FA48E2CEE0093CC70EE8';
wwv_flow_api.g_varchar2_table(2) := 'EBDEF4703BC31423092B941544920E16B6FFA32D65C3B66DE6DF8DC205C0685D64905162D23C0D10862A5C1DE268985343501143E51935A424A219AB2112E0C876205202D2976D726F595F828990DACA6D62288C33103586280A3A61AC8648A054D0154C';
wwv_flow_api.g_varchar2_table(3) := '026510BE457978228058CF61F1BD8F0E29F391AE9EB8CDF37C5996E5DE5AF110BC4941A7D0AFEBFAF0DE5F89C86B20A5A3826FD39D2701304DD3EDA89AAD72EBF264AB01254829F93CE92EE42084487DB2862FE3F7A325D5430CCF39DADB8BA7D60BC913';
wwv_flow_api.g_varchar2_table(4) := '5329C2086E6AB6226E2A474A17048DE7D7CF9E482103ABE42E08943033DA939E3F94ACBD041800AC481BD8CAD99F980000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4185053283451829)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderTopLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001734944415478DAB4964D4EC33010853BE6B7FC2A80A0880A81044B';
wwv_flow_api.g_varchar2_table(2) := '96DC2227621F71072EC1263B0E907D720516D945AC4363C6D1B872078F139732D2AB2D379DAFEFC971025AEBC97F1790DCDA28D598300035B2B9DE042406A06321DB034D75C477226437009146694D844C038031F320C8428E0380210D822CE48C41B83A';
wwv_flow_api.g_varchar2_table(3) := '36DAF92400FC05990900B7399F77239CAD406E0310AB8530F7395B0159C8A307C2015C128C6F8C25E4C9597463E18DBFD9B808C4B774D343AAAA7AB30B4A290D00DA8C4DD37C6659F691E779438DB9B833DF86E821E643ACB66DBFCAB27CA548EF5173D4';
wwv_flow_api.g_varchar2_table(4) := '15EA1C758A3A42EDD30D6D4E8E2D3AA6C08D2B08B155D7F53B81EE5037A84B5442F7D8016A0FB5C320100531458E1E68375EA32EC8CD2173A35C375110135D9AA6CF4E6CAE9BA9145914C45451142F8E9B199D162781C87A888A7900254932779A28963F';
wwv_flow_api.g_varchar2_table(5) := '48BF8B82745D074273083CCEE320681D3CCD5D80EF1D626D2712E8EF7179DE7260E09AB52083FFDA573F020C00D48DB1DF250578C70000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4185750480453090)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4borderTopRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFF4D4D4DFBFBFBE2E2E2E4E4E4FCFCFCCECECEA6A6A6ADADADD2D2D2F8F8F8EEEEEEABABABA4A4A4BCBCBCEDEDED9B9B9B868686A7A7A7EBEBEBF5F5F5A3A3A3BDBDBDC6C6C6727272757575797979969696E6E6E6';
wwv_flow_api.g_varchar2_table(2) := 'F7F7F7A2A2A2C0C0C0F9F9F9D8D8D8767676989898F0F0F0BBBBBBA0A0A0D1D1D1DFDFDF717171747474C4C4C4D6D6D6DBDBDBF2F2F2E0E0E06E6E6ECACACAD0D0D0C2C2C2F4F4F4999999B2B2B2E3E3E3EAEAEAAAAAAA5959595858586666665656566D';
wwv_flow_api.g_varchar2_table(3) := '6D6DB8B8B8E9E9E9E7E7E7F1F1F1C7C7C7B9B9B9B5B5B5919191AFAFAFB4B4B47D7D7D8181818484847C7C7C808080B1B1B1DCDCDC7F7F7F7A7A7ADDDDDDD4D4D4838383B6B6B65F5F5F6868686F6F6F5C5C5C5A5A5ACDCDCD8B8B8B878787BFBFBF9C9C';
wwv_flow_api.g_varchar2_table(4) := '9C8A8A8A8E8E8E9292928D8D8D8888886464646363636161616A6A6AD9D9D9D5D5D5959595CBCBCB9494946B6B6BC3C3C35D5D5D8F8F8F6060609D9D9D9F9F9FC9C9C9676767A8A8A8787878AEAEAE55555500000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4186448107454259)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t4loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000010000004B080300000086081DB100000033504C54455252524747474F4F4F4141414B4B4B5050503A3A3A6060608A8A8A333333D2D2D25A5A5A515151F2F2F2898989FFFFFFE6E5E57774AF770000002B';
wwv_flow_api.g_varchar2_table(2) := '49444154785EA5C1850D80401000B09E3C6EFB4FCB0C84D462C661482D94FB93D3E6F969B79A94D0D270BD188803D257F447F70000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4187145304455521)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t5border.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000E10000004B0803000000B1EA10C00000018F504C54454F4F4FDEDEDEDBDBDBD2D2D2BBBABAB9B8B8EAEAEA9999999292925A5A5AD4D4D4E3E3E3C5C5C5AFAFAFA0A0A05B5B5BB7B7B73D3D3DBBBBBBC2C2';
wwv_flow_api.g_varchar2_table(2) := 'C2ACACAC626161AAAAAAB9B9B95B5A5A5E5D5D979797C4C4C49B9A9ABAB9B98D8D8D7C7C7CF2F2F22B2B2B2D2D2D2C2C2C4D4D4D2E2E2E303030CDCDCD393939ECEBEBE5E5E52F2F2FEAE9E92A2A2A4C4C4C434343383838323232363636D9D9D93A3A3A';
wwv_flow_api.g_varchar2_table(3) := 'D8D8D8CCCCCC4B4B4BC0C0C0424242E8E7E74747473131314A4A4A414141EFEEEE373737484848454545515151F1F1F13B3B3B3C3C3C333333494949E9E9E9464646505050EBEAEA5E5E5EEDEDED606060A8A8A8EFEFEF3535358A8A8AE7E6E644444482';
wwv_flow_api.g_varchar2_table(4) := '82825D5D5DE9E8E84E4E4E7575754040403E3E3EA7A7A7EEEDEDBEBEBE5C5C5C525252898989CECECEECECEC535353F6F6F6F0F0F07676765F5F5FE6E5E57878789F9F9F6A6A6AA6A6A6D0D0D08E8E8ECACACAB3B3B3F8F8F8838383ADADADF3F3F33F3F';
wwv_flow_api.g_varchar2_table(5) := '3F343434ABABABBFBFBFCFCFCF747474696969818181F9F9F9F4F3F3686868CFCECEFFFFFFA2A2A211BB09BD0000061D49444154785EC4D7658FE33C1000E0FC144318CACCCCCB8CC7CCCCF7E20FBFB19B6DE26E3655BB9BBBF9504BEE58F2237B1C5BDA';
wwv_flow_api.g_varchar2_table(6) := '593AFE7DFA076367E34E7B2CE5CB35EDBFD078D3CFD4CA7969DCBE2BEDBCD8582E44E1AE31BC04181A4100DBF0C6D862FA6E20661DB1A8CFDA55853064B91084871D13CD534A28DB2905CCD7747B4B9D345AF720BBF0C76100D0FEEB168B877FBB6DFD66';
wwv_flow_api.g_varchar2_table(7) := '84EDE0B84A68A097DB687E7A8768BB80EC79A029A5724064C05CEA1888BEF4B7687259687CC494527CEB9DDBA2EB0A396E7C55CC9C82F01CED3B4E80D0715E338208C4B80144066C600788FEF49FE83C404809211484BCBDB690E9A4B0E04C4158DA320F';
wwv_flow_api.g_varchar2_table(8) := '28C501428CE90F73CB575D1300524A74AD6377349DC0A8EFC8F6A71F985BA54B42A2280A01216FAF29E4BE23598EB1C88B11E321CB8004A22784B9268842688090427F3BE7AB2E239BC2D0A96434A46514188453D98990DECA7586910A992F561D34CBC1';
wwv_flow_api.g_varchar2_table(9) := 'D16C0EAA31991167C2FB68932896652988C7BABB6D7910D69F3843DEE9095B9342B6DADBE8A93086C286F5969CA7D333743F322107C6AACDD15EBC580B8C627C6FD4CC037126AC9B8F01A8AAAAF5606DEDE0F6B169F3CDF8CFED83B5B507BC5F21FB5E75';
wwv_flow_api.g_varchar2_table(10) := '41F52588A55658A8164940457A4237FD31AACF0B2D5768DD8050AE963F848DF8526CB94410B203BFCD80D309B35DF7D560932A3814DC2E4421ACBA3CA26E55921020D419D0135EA4B7CD47A568847C099BFF870F795E6B0D62AEF010151A9449D8843911';
wwv_flow_api.g_varchar2_table(11) := '17A642CCBBDD7EBE19776744AD5B49F6FBFD64A5AB01D027F4D20B20F7848A2B546E42285747AFC285F74EE3E5AA3C151A690713058030DFA4282453F8B49F60C7AB451B3D7185CF902D1C4CBEF4AC1191109630FE2D5CA8654E5A55599AAD21504012BC';
wwv_flow_api.g_varchar2_table(12) := '864916016BA8F23FD4F935F4D2610D23DAA547F972F1DE0261E2746F1003E1DD8B3A9CD51BABC38258871C2ED6A196999D34BA26D6A19BDE4E475687D2517E545B20CCA57A7156882074CF5220FACED2897096565400BE17CE521DE8D3B0145D3C4B797A';
wwv_flow_api.g_varchar2_table(13) := '8467293B68AAAD9345C2ED5EB119634342BE8775C483F7EB9BC2F7304114E8EE3E811F58F484FF7BC8D3C96604DF4341F8693921BFD3E84AC89D46F35D528C740313085D439A4E2070233D77A761E9110BB505C2CF5D41187A2FA581F7520A2B67C36A52';
wwv_flow_api.g_varchar2_table(14) := '18758C6C7F7AF0BD14E420E4ED6F15AEF6B618FBDF1678EE6DB1BFD2DB227AA1F83E0C7DF00151E2C0A79C18C1FB301221C470A5377E76A5377EE4C25FECD8CF4B02411407F0B49A5D7656098A2E1DBE730B413A459151D22F22925AC9835D824208BA45';
wwv_flow_api.g_varchar2_table(15) := '03758CFCC76B67B7DE8E8D0312F216F37B11610E7E90376FDE2321D39E8641C890FF289C0BE7C2F94DD33F158E6E219DDD42FC740B69770BE1EE16C34A9AE17BFED966EAF8B176747CBDF9BBE38B5057F38E5FD50911E9F8481A43A4A9BCE49F4CAFB61A';
wwv_flow_api.g_varchar2_table(16) := 'E010022B866001819468808021D2F19ABA2BA3B0D51501C6085117D6CB3B051A62D3005362B3783C10DD56E984E6B78E1522AC16A727A99111550684961DEBF80D1D9F9A704379B33A221CA818268E8D7066888B13F0372C404E2D4CC03089D560CAC2B5';
wwv_flow_api.g_varchar2_table(17) := '456FD66D615B24C812065F4984D9088B7AFA254416AAAEACFA28A622478448547BBAC2A5276F9649682EFC105622B3898A40A1EA22A203484284F2B15512615F451A5E21517A1691800E217444725E6143025E21A5B8110E00D03DEA1002B231F3FF616F';
wwv_flow_api.g_varchar2_table(18) := 'B6EB5030D7A1FF2EEDCCC85DFAF77EA8E90A72F44356E1E46F9AFEA46F1A6621C3BB9441C8305BB009FDF361A49A13CF87FC42F6199F4158E63DCD673B77EC12310CC571BCC3093A950A7277A24E0776BA402994525A722789C50E42254849879E9B6E4E';
wwv_flow_api.g_varchar2_table(19) := 'E97CFEE3F60959AA2483C3F1E0FDFE830FE9F8BEFDA7F0244321242109494842129290842424210949A87DC2562215DAFB529F70994806C2034A613309AB4BB7F096F7AA462CDCEED8B95B78171B7BE78D51186CEABDBE7101AFB9CCE1561FADB0CB0AD6';
wwv_flow_api.g_varchar2_table(20) := 'A757EFAF43B8BA982D0C8775CFA586DE02A9F0E7332D0B66649C8C8FBF37B63C965A4D4F8858180051552612229D4F081999CA02510A7D6957CED41EC2AEAE79C02B74E779BBBACC20CE832744299C2796DB3FFACACE06963885D6D8381B590022168211';
wwv_flow_api.g_varchar2_table(21) := 'E6EC9C910AEDDE7C43FA4F856FD2C2B9C2643C24B90000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4187842069456994)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t5controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFFFF5500FEFBFAFEE3D6FEE6DAFEFCFCFED0BAFEAA80FEB08AFED4C0FEF8F6FEEFE8FEAF88FEA87EFEBFA0FEEEE6FE9F70FE8B52FEAB82FEECE4FEF6F2FEA77CFEC0A2FEC8AEFE7836FE7B3AFE7F40FE9B6AFEE7DC';
wwv_flow_api.g_varchar2_table(2) := 'FEF7F4FEA67AFEC3A6FEFAF8FEDAC8FE7C3CFE9C6CFEF0EAFEBE9EFEA478FED3BEFEE0D2FE7734FE7A38FEC7ACFED8C6FEDCCCFEF3EEFEE2D4FE7430FECCB4FED2BCFEC4A8FEF4F0FE9E6EFEB692FEE4D8FEEBE2FEAE86FE6012FE5F10FE6C24FE5E0EFE';
wwv_flow_api.g_varchar2_table(3) := '732EFEBB9AFEEAE0FEE8DEFEF2ECFECAB0FEBC9CFEB896FE9662FEB38EFEB794FE8346FE874CFE8A50FE8244FE864AFEB490FEDECEFE8448FE8042FEDFD0FED6C2FE884EFEBA98FE661AFE6F28FE7632FE6316FE6214FECFB8FE905AFE8C54FEC2A4FEA0';
wwv_flow_api.g_varchar2_table(4) := '72FE8F58FE935EFE9764FE925CFE8E56FE6B22FE6A20FE681EFE702AFEDBCAFED7C4FE9A68FECEB6FE9866FE722CFEC6AAFE6418FE9460FE671CFEA274FEA376FECBB2FE6E26FEAC84FE7E3EFEB28CFE5C0C00000000000000000000000000000021FF0B';
wwv_flow_api.g_varchar2_table(5) := '4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904090500';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90409050000002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F90409050000002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F90409050000002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90409050000002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90409050000002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90409050000002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F90409050000002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F90409050000002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4188538618458626)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t5loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000280000002804030000007ED0A55E00000012504C5445FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF47D7349F0000000574524E53EF801000CF924B9CD50000003E49444154785EEDD3210100201043D121';
wwv_flow_api.g_varchar2_table(2) := 'F0181240828B400210EB5F05CF1600715F3EBD211A9FCAC0A4B4D0150FAAE2064D9F6062A21DAD9DB73D82BDCC05FAB0061ABD2A80320000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4189236030459842)
,p_plugin_id=>wwv_flow_api.id(34417118739715844292)
,p_file_name=>'t5loading_background.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(2749308328128941)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>25
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_global_page_id=>0
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140611192922'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2833014343847337)
,p_plug_name=>'footer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_source=>'htp.p(myHome_ctrl.fn_p0_footer);'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'&APP_TITLE. - Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function getJSON2(){',
' var get = htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=ap_json_test'',$v(''pFlowStepId''));',
' vReturn = get.get();',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140701210223'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2751819125162016)
,p_name=>'My Home'
,p_template=>wwv_flow_api.id(2805719500088283)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT j.id',
'      ,j.job_no',
'      ,j.name',
'      ,j.model_code',
'      ,j.status',
'      ,j.start_date',
'FROM  job_hdrs_vw j',
'WHERE j.job_no = :F_JOB_NO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(2809207174088284)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2752115363162019)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2752229685162019)
,p_query_column_id=>2
,p_column_alias=>'JOB_NO'
,p_column_display_sequence=>2
,p_column_heading=>'JOB_NO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2752327667162019)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2752401781162019)
,p_query_column_id=>4
,p_column_alias=>'MODEL_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'MODEL_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2752527367162019)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'STATUS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2752617431162019)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'START_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2755222593528364)
,p_plug_name=>'debug'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2805719500088283)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  htp.p(''JOB: ''||:F_JOB_NO);',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'myhome_ctrl.gc_debug = myhome_ctrl.gc_yes'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2818729881200379)
,p_plug_name=>'Notices'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'myhome_ctrl.fn_p1_notices;',
'',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2828212272910311)
,p_name=>'Notices'
,p_template=>wwv_flow_api.id(2805719500088283)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'from notices_vw'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(2809207174088284)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2828501292910312)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2828617172910313)
,p_query_column_id=>2
,p_column_alias=>'CLIENT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'CLIENT_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2828731708910313)
,p_query_column_id=>3
,p_column_alias=>'NOTICE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'NOTICE_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2828808243910313)
,p_query_column_id=>4
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>4
,p_column_heading=>'MESSAGE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2828904335910313)
,p_query_column_id=>5
,p_column_alias=>'READ'
,p_column_display_sequence=>5
,p_column_heading=>'READ'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2829016263910313)
,p_query_column_id=>6
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'CREATED_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2829108734910313)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'CREATED_BY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2829728202914863)
,p_plug_name=>'Welcome'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(2809207174088284)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2822523333649462)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2751819125162016)
,p_button_name=>'P1_JSON'
,p_button_static_id=>'P1_JSON'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2816205416088288)
,p_button_image_alt=>'Get'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:getJSON2();'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2838112141126614)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2828212272910311)
,p_button_name=>'DIALOG'
,p_button_static_id=>'invoke-modal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2815607946088287)
,p_button_image_alt=>'Dialog'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2840316580505801)
,p_name=>'invoke modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2838112141126614)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2840604555505802)
,p_event_id=>wwv_flow_api.id(2840316580505801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'My First Dialog'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:500:&APP_SESSION.:::500:::'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2755716107583290)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load'
,p_process_sql_clob=>'myhome_ctrl.pr_load;'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_name=>'Dialog'
,p_page_mode=>'NORMAL'
,p_step_title=>'Dialog'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(2785424530088276)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140628111523'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_tab_set=>'TS1'
,p_name=>'Job Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140611190752'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_tab_set=>'TS1'
,p_name=>'Support'
,p_page_mode=>'NORMAL'
,p_step_title=>'My Support'
,p_step_sub_title=>'My Support'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140602212630'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2821223530593335)
,p_name=>'My Support'
,p_template=>wwv_flow_api.id(2805719500088283)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select sysdate',
'from dual --jobhdr_parties_vw'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(2809207174088284)
,p_plug_query_max_columns=>60
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2821523884593337)
,p_query_column_id=>1
,p_column_alias=>'SYSDATE'
,p_column_display_sequence=>1
,p_column_heading=>'SYSDATE'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(2756602120088267)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140604211759'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2749817264128948)
,p_plug_name=>'Logon...'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2802827027088282)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2825816418835786)
,p_plug_name=>'Banner'
,p_region_name=>'login-banner'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'<span style="font-style:italic;font-size:large;">Welcome to &APP_TITLE.</span>',
'<span></span>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2750110410128949)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2749817264128948)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2815607946088287)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2749904447128949)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2749817264128948)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(2815014877088287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2750011851128949)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2749817264128948)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(2815014877088287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2750323769128950)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2750208409128949)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2750506805128950)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2750411075128950)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00105
begin
wwv_flow_api.create_page(
 p_id=>105
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_name=>'Template Tester'
,p_page_mode=>'NORMAL'
,p_step_title=>'Template Tester'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140705084813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2842017910562509)
,p_plug_name=>'Template Tester'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2805719500088283)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2842431608570393)
,p_name=>'P105_CHECKBOX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2842017910562509)
,p_prompt=>'Checkbox'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(2815105788088287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2842504666577604)
,p_name=>'push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P105_CHECKBOX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2842819786577604)
,p_event_id=>wwv_flow_api.id(2842504666577604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P105_CHECKBOX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00500
begin
wwv_flow_api.create_page(
 p_id=>500
,p_user_interface_id=>wwv_flow_api.id(2749308328128941)
,p_name=>'Modal Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modal Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(2785424530088276)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EHARRIS'
,p_last_upd_yyyymmddhh24miss=>'20140701205641'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2840923076526623)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2805719500088283)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
