create or replace package apx_name as
/**
 *  File         : apx_name.pkb
 *  Description  : Methods relating to 
 *
 *  Change History
 *  Date          Version    Author               Description
 *  ----------    -------    ------               ------------
 *  21-APR-2020    1.0       Harrise (SAGE)       Initial Version.
 */
   

  -- Constants.
  --
  gc_scope_prefix             varchar2(100) := lower($$plsql_unit)||'.';
  gc_date_format              varchar2(11)  := v('f_date_format');
  
 
  procedure s ( p_name  in varchar2
               ,p_value in varchar2
              ) is
  begin
    apex_util.set_session_state( p_name  => p_name
                                ,p_value => p_value);
  end s;

end apx_name;

/

show errors