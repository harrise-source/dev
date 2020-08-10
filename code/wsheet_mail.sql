-- Needs to be run from APEX SQL Workshop
-- I use it heaps as sanity check for apex emailing
begin
apex_mail.send
    (p_to         => 'wesleys@sage.com.au'
    ,p_from       => 'wesleys@sage.com.au'
    ,p_body       => 'text/html; charset=us-ascii'
    ,p_body_html  => 'hello <b>universe</b>'
    ,p_subj       => 'test send 1'
    ,p_cc         => null -- 'internal_copy@sage.com.au' --  v('P59_CC')
   );
end;   
/

-- Haven’t tried this one in a while
declare
  l_data blob;
  l_len number;
  l_id number;
begin
  read_local_binary_data
    (p_data => l_data
    ,p_len  => l_len
      ,p_dir  => 'JOB_1311260' -- succeeds
    ,p_file => '1311260SW.pdf');
  apx_util.debug('l_len:'||l_len,p_src=>'blob',p_commit=>true);
  dbms_output.put_line('l_len:'||l_len);

l_id:=apex_mail.send
    (p_to         => 'wesleys@sage.com.au'
    ,p_from       => 'wesleys@sage.com.au'
    ,p_body       => 'text/html; charset=us-ascii'
    ,p_body_html  => 'hello <b>universe</b>'
    ,p_subj       => 'test attach 1'
    ,p_cc         => null -- 'internal_copy@sage.com.au' --  v('P59_CC')
   );
   
   APEX_MAIL.ADD_ATTACHMENT(
            p_mail_id    => l_id,
            p_attachment => l_data,
            p_filename   => '1311260SW.pdf',
            p_mime_type  => 'application/pdf');

end;
/


-- Run these from APEX SQL Workshop:
SELECT * from APEX_MAIL_LOG ORDER BY LAST_UPDATED_ON DESC;

-- The next one will normally be empty, unless just prior to a queue purge (every 15 min?) or an error happened, then it will be retried 10X before finally being purged:
SELECT * from APEX_MAIL_QUEUE ORDER BY LAST_UPDATED_ON DESC;

SELECT id ,
       mail_to ,
       mail_from ,
       mail_replyto ,
       mail_subj ,
       mail_cc ,
       mail_bcc ,
       mail_body ,
       mail_body_html ,
       mail_send_count ,
       mail_send_error ,
       last_updated_by ,
       TO_CHAR(last_updated_on, 'DD-MON-YYYY HH24:MI:SS')  
from APEX_MAIL_QUEUE ORDER BY LAST_UPDATED_ON DESC;

select mail_to ,
       mail_from ,
       mail_replyto ,
       mail_subj ,
       mail_cc ,
       mail_bcc ,
       mail_send_error ,
       to_char(last_updated_on, 'DD-MON-YYYY HH24:MI:SS')  
from APEX_MAIL_LOG  ORDER BY last_updated_on DESC;

-- Looks like email record in APEX_MAIL_LOG is created by SYS when manually pushed 
BEGIN
  APEX_MAIL.PUSH_QUEUE;
END;


