create or replace package sage_utils as

  -- Name       : sage_utils
  --====================================================================
  -- Description: 
  -- Version    : 1.0
  -- Modification History:
  -- Author                  Date          Version     Cmts
  -- --------------          -----------   ---------   -------------------
  --===========================================================================
	
  procedure pr_set_debug(p_debug in varchar2 default 'n');
  
	procedure p_load;
  
	procedure p1_load;
	
	procedure p_process;
	
end sage_utils;