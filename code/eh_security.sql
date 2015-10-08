--harrise setup
grant u_group_super to harrise;

Insert into USER_MASTER (LOGIN_ID,INITIALS,FULL_NAME,EMAIL_ADDRESS,OFFICE_PHONE,MOBILE_PHONE,OFFICE_FAX,MGR_ID,PRINTER_NAME,ACCOUNT_CODE,DEACTIVE_DATE) 
values ('HARRISE','EDHA','EDDIE HARRIS','harrise@vhgroup.com.au','(08) 9241 1475',null,'(08) 9241 0155','DCP','\\vhhops1\hocpra319-d',null,null);
/

Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','S','S');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','S','A');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','S','V');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','S','I');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','H','M');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','S','E');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','H','E');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','S','M');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','H','S');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','H','I');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','H','V');
Insert into USER_OFFICES (LOGIN_ID,DIV_CODE,SALES_OFFICE) values ('HARRISE','H','A');
/

-- ROLES
GRANT "U_LAND" TO "HARRISE";

ALTER USER "HARRISE" DEFAULT ROLE "CONNECT","RESOURCE","U_GROUP_SUPER","U_LAND","U_ITREF";


GRANT U_ADDE_MAINT TO HARRISE;
GRANT U_ADDE_MGT TO HARRISE;
GRANT U_CONSTR_REPT TO HARRISE;
GRANT U_GROUP_SUPER TO HARRISE;
GRANT U_ITREF TO HARRISE;
GRANT U_LAND TO HARRISE;
GRANT U_MGT TO HARRISE;




-- user data tables
user_master
user_offices

-- this is not controlled but referenced in some cases
user_roles

-- VHG user roles
select * from dba_roles where ROLE like 'U%';



/*
  **********************
  VHG DBS Security Roles
  **********************

  SITE START SUPERVISOR  --> U_CONSTR1 supervisors.supertype = 'START'
  JOB SUPERVISOR         --> U_CONSTR1 supervisors.supertype = 'SUPER'
  CONSTRUCTION MANAGER   --> U_CONSTR_MGT
  						 --> U_GROUP_SUPER

  U_BRAND_SUPER ??

  U_GROUP_SUPER
  
*/




