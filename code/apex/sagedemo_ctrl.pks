create or replace package sagedemo_ctrl as

  -- Name       : sagedemo_ctrl
  --====================================================================
  -- Description: 
  -- Version    : 1.0
  -- Modification History:
  -- Author                  Date          Version     Cmts
  -- --------------          -----------   ---------   -------------------
  --===========================================================================
	
  procedure pr_set_debug(p_debug in varchar2 default 'n');
  
	procedure pr_load;
  
	procedure pr_p1_load;
	
	procedure pr_p1_process;
	
end sagedemo_ctrl;