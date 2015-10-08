create or replace package body sagedemo_ctrl as

  --====================================================================
  -- Name       : sagedemo_ctrl
  -- Description: 
  -- Version    : 1.0
  -- Modification History:
  -- Author                  Date          Version     Cmts
  -- --------------          -----------   ---------   -------------------
  --===========================================================================
  
  gc_debug varchar2(1);
  
  date_format constant varchar2(30) := 'DD-MON-YYYY';

  /*******************************************************************************
      Set debugging on or off.
  *******************************************************************************/
  procedure pr_set_debug(p_debug in varchar2 default 'n') is
  begin
      gc_debug := p_debug;
  end pr_set_debug;

  /*******************************************************************************
      Write debug messages
  *******************************************************************************/
  procedure pr_debug(p_msg varchar2) is
  begin
    if gc_debug = 'y' then
      null;
			-- debug
    end if;
  end pr_debug;

  procedure msg (i_msg in varchar2) is
  begin
    apex_debug_message.log_message
      ($$plsql_unit || ': ' || i_msg
      ,p_enabled => true
      ,p_level   => 1);
  end msg;

  -- get date value
  function dv
    (i_name in varchar2
    ,i_fmt in varchar2 := date_format
    ) return date is
  begin
    return to_date(v(i_name), i_fmt);
  end dv;
  -- set value
  procedure sv

    (i_name in varchar2
    ,i_value in varchar2 := null
    ) is
  begin
    apex_util.set_session_state(i_name, i_value);
  end sv;

  -- set date
  procedure sd
    (i_name in varchar2
    ,i_value in date := null
    ,i_fmt in varchar2 := date_format
    ) is
  begin
    apex_util.set_session_state(i_name, to_char(i_value, i_fmt));
  end sd;

  procedure success (i_msg in varchar2) is
  begin
    msg('success: ' || i_msg);
    if apex_application.g_print_success_message is not null then
      apex_application.g_print_success_message
        := apex_application.g_print_success_message || '<br>';
    end if;
    apex_application.g_print_success_message
      := apex_application.g_print_success_message || i_msg;
  end success;
  
  /**************************************************************************************
    Init Apex Session
  *************************************************************************************/
  PROCEDURE pr_init IS
  BEGIN
	
	END pr_init;
	
	
	/**************************************************************************************
		Generic Page Load
	**************************************************************************************/
  procedure pr_load is
  begin
    msg('p_load');
    CASE v('APP_PAGE_ID') 
		  WHEN 1 THEN
		  p1_load;
			
	  END CASE;
    msg('p_load finished');
  end p_load;
	
	/**************************************************************************************
		P1 - Page Load 
	**************************************************************************************/
	procedure pr_p1_load is
	begin
	  msg('pr_p1_load');
	end pr_p1_load;

	/**************************************************************************************
		P1 - Page Process
	**************************************************************************************/
  procedure pr_p1_process is
    request varchar2(100) := v('REQUEST');
  begin
    msg('pr_p1_process ' || request);
    case request
    when 'create' then
		  null;
      --member_insert;
    when 'submit' then
      null;
			--member_update;
    when 'delete' then
      --member_delete;
      apex_util.clear_page_cache(apex_application.g_flow_step_id);
    when 'copy' then
      --member_update;
      sv('p1_member_id'); -- clear the member id for a new record
    else null;
    end case;
    msg('pr_p1_process finished');
  end pr_p1_process;
  
end sagedemo_ctrl;