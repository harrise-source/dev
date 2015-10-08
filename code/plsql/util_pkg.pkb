create or replace package body util_pkg as
-- SAGE(EH)

gn_true  constant pls_integer := 1;
gn_false constant pls_integer := 0;

procedure debug
  (p_msg   in varchar2
  ,p_src   in varchar2 default null) is

begin
  htp.prn(p_msg||'<br>');
  --dbms_output.put_line(p_msg);  
end debug;

function is_true
  return pls_integer is
begin
  return gn_true;
end is_true;  


function is_false
  return pls_integer is
begin
  return gn_false;
end is_false; 