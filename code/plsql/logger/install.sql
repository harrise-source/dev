REM Connect as  - name user LOGGER_USER
@create_user.sql

grant connect,create view, create job, create table, create sequence, create trigger, create procedure, create any context to logger_user;

REM Connect as LOGGER_USER
@logger_install.sql

REM Connect as MY_SCHEMA_NAME
@scripts/create_logger_synonyms.sql LOGGER_USER

REM Connect as APX_ADMIN
@scripts/create_logger_synonyms.sql LOGGER_USER

REM Connect as LOGGER_USER
@scripts/grant_logger_to_user.sql MY_SCHEMA_NAME


REM Test access as 
SELECT * FROM logger_logs_r_mins;


REM Set production Level to Warning (4) or Error (2)
REM execute logger.set_level(4);


SELECT * FROM logger_prefs;