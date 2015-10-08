create or replace function clob_to_blob (p_clob_in in clob)
return blob
is
v_blob blob;
v_offset integer;
v_buffer_varchar varchar2(32000);
v_buffer_raw raw(32000);
v_buffer_size binary_integer := 32000;
begin
--
  if p_clob_in is null then
    return null;
  end if;
-- 
  DBMS_LOB.CREATETEMPORARY(v_blob, TRUE);
  v_offset := 1;
  FOR i IN 1..CEIL(DBMS_LOB.GETLENGTH(p_clob_in) / v_buffer_size)
  loop
    dbms_lob.read(p_clob_in, v_buffer_size, v_offset, v_buffer_varchar);
    v_buffer_raw := utl_raw.cast_to_raw(v_buffer_varchar);
    dbms_lob.writeappend(v_blob, utl_raw.length(v_buffer_raw), v_buffer_raw);
    v_offset := v_offset + v_buffer_size;
  end loop;
  return v_blob;
end clob_to_blob;