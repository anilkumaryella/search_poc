--create table ACCOUNT_MASTER(ID NUMBER(4 BYTE) NOT NULL,MOBILE_NO VARCHAR2(20 BYTE),ACCOUNT_NO VARCHAR2(20 BYTE),STATUS VARCHAR2(20 BYTE),REGISTER_DATE_TIME DATE,UPDATED_DATE_TIME DATE);

insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(11,'9941234411','432156781231',1000.00,'A',to_date('20190101','YYYYMMDD'), to_date('20190101','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(12,'9941234412','432156781232',1001.00,'A',to_date('20190101','YYYYMMDD'), to_date('20190101','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(13,'9941234413','432156781233',1002.00,'A',to_date('20190101','YYYYMMDD'), to_date('20190101','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(14,'9941234414','432156781234',1003.00,'A',to_date('20190102','YYYYMMDD'), to_date('20190102','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(15,'9941234415','432156781235',1004.00,'A',to_date('20190102','YYYYMMDD'), to_date('20190102','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(16,'9941234416','432156781236',1005.00,'A',to_date('20190102','YYYYMMDD'), to_date('20190102','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(17,'9941234417','432156781237',1006.00,'A',to_date('20190103','YYYYMMDD'), to_date('20190103','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(18,'9941234418','432156781238',1007.00,'A',to_date('20190104','YYYYMMDD'), to_date('20190104','YYYYMMDD'));
insert into ACCOUNT_MASTER(ID,MOBILE_NO,ACCOUNT_NO,BALANCE,STATUS,REGISTER_DATE_TIME,UPDATED_DATE_TIME) values(19,'9941234419','432156781239',1008.00,'A',to_date('20190104','YYYYMMDD'), to_date('20190104','YYYYMMDD'));
COMMIT;