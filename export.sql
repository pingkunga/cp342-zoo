--------------------------------------------------------
--  File created - �ѹ�ѹ���-�ѹ��¹-12-2554   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ANIMAL
--------------------------------------------------------

  CREATE TABLE "ZOO"."ANIMAL" 
   (	"ANIMAL_ID" VARCHAR2(20), 
	"ANIMAL_NAME" VARCHAR2(100), 
	"ANIMAL_DOB" DATE, 
	"ID_FATHER" VARCHAR2(20), 
	"ID_MOTHER" VARCHAR2(20), 
	"ANI_TYPE_ID" VARCHAR2(20), 
	"ANI_GENDER" VARCHAR2(1), 
	"ZONE_ID" VARCHAR2(20), 
	"ANI_SPECIES_ID" VARCHAR2(20), 
	"ANI_PIC" VARCHAR2(500)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ANIMAL_TYPE
--------------------------------------------------------

  CREATE TABLE "ZOO"."ANIMAL_TYPE" 
   (	"ANI_TYPE_ID" VARCHAR2(20), 
	"ANI_TYPE_NAME" VARCHAR2(200)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ANIMAL_ZONE
--------------------------------------------------------

  CREATE TABLE "ZOO"."ANIMAL_ZONE" 
   (	"ZONE_ID" VARCHAR2(20), 
	"ZONE_NAME" VARCHAR2(200)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ANI_SPECIES
--------------------------------------------------------

  CREATE TABLE "ZOO"."ANI_SPECIES" 
   (	"ANI_SPECIES_ID" VARCHAR2(500), 
	"ANI_SPECIES_NAME" VARCHAR2(100), 
	"ANI_DES" VARCHAR2(3000), 
	"ZONE_ID" VARCHAR2(100), 
	"ANI_PIC" VARCHAR2(500)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZOO_EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "ZOO"."ZOO_EMPLOYEES" 
   (	"EMP_ID" VARCHAR2(20), 
	"FIRST_NAME" VARCHAR2(50), 
	"LAST_NAME" VARCHAR2(50), 
	"EMP_DOB" DATE, 
	"PHONE_NUMBER" VARCHAR2(20), 
	"JOB_ID" VARCHAR2(20), 
	"HIRE_DATE" DATE, 
	"SALARY" NUMBER, 
	"MANEGER_ID" VARCHAR2(20)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZOO_JOBS
--------------------------------------------------------

  CREATE TABLE "ZOO"."ZOO_JOBS" 
   (	"JOB_ID" VARCHAR2(20), 
	"JOB_NAME" VARCHAR2(100), 
	"JOB_TITLE" VARCHAR2(200)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

---------------------------------------------------
--   DATA FOR TABLE ANIMAL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANIMAL
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('003','A',to_timestamp('13-FEB-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','005','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/03.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('004','B',to_timestamp('05-JAN-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','007','004','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/04.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('005','C',to_timestamp('11-SEP-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','006','005','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/05.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('006','D',to_timestamp('12-OCT-10 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'036','037','004','M','006','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/06.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('007','E',to_timestamp('10-JUN-10 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','006','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/07.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('008','F',to_timestamp('15-DEC-03 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','004','008','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/08.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('009','G',to_timestamp('15-FEB-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','006','009','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/09.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('010','H',to_timestamp('19-OCT-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','006','010','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/10.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('011','I',to_timestamp('02-AUG-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','006','011','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/11.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('012','J',to_timestamp('03-NOV-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','004','012','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/12.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('013','K',to_timestamp('07-JAN-03 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','004','013','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/13.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('014','L',to_timestamp('06-AUG-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','006','014','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/14.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('015','M',to_timestamp('15-MAR-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','M','001','015','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/15.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('016','N',to_timestamp('16-AUG-09 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','M','001','016','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/16.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('017','O',to_timestamp('31-DEC-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','M','001','017','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/17.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('018','P',to_timestamp('03-SEP-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','F','001','018','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/18.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('019','Q',to_timestamp('26-JUL-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','F','001','019','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/19.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('020','R',to_timestamp('30-JUN-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','F','001','020','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/20.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('021','S',to_timestamp('31-DEC-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','F','001','021','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/21.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('022','T',to_timestamp('01-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','M','001','022','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/22.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('023','U',to_timestamp('16-AUG-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'001','F','001','023','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/23.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('024','V',to_timestamp('03-SEP-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','F','007','024','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/24.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('025','W',to_timestamp('26-JUL-04 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','F','007','025','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/25.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('026','X',to_timestamp('01-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','F','007','026','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/44659800.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('027','Y',to_timestamp('03-SEP-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','M','002','027','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/f45e2aed.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('028','Z',to_timestamp('16-AUG-09 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','M','002','028','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/f9bfa0e5.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('029','AA',to_timestamp('30-JUN-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','F','002','029','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/932feaaa.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('030','BB',to_timestamp('31-DEC-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','M','002','030','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/26649ae4.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('031','CC',to_timestamp('30-JUN-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'002','F','002','031','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/ec35aa09.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('032','DD',to_timestamp('01-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'003','M','003','032','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/74d663c6.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('033','EE',to_timestamp('16-AUG-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'003','F','003','033','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/33.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('034','FF',to_timestamp('26-JUL-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','005','034','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/34.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('035','GG',to_timestamp('01-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'003','F','003','035','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/35.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('036','HH',to_timestamp('31-DEC-08 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','006','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/06.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('037','II',to_timestamp('01-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','006','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/06.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('001','����',to_timestamp('12-MAR-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','001','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/01.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('002','������',to_timestamp('15-JAN-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','002','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/02.jpg');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANIMAL_TYPE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANIMAL_TYPE
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('001','�ѵ��ա');
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('002','�ѵ�������¤�ҹ');
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('003','�ѵ����');
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('004','�ѵ������§�١���¹�');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_TYPE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANIMAL_ZONE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANIMAL_ZONE
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('007','⫹�ѵ�פ��觺����觹��');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('001','⫹�ѵ��ա');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('002
','⫹�ѵ�������¤�ҹ');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('003','⫹�ѵ����');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('004','⫹�ѵ�������');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('005','⫹�Ѵ�ʴ�');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('006','⫹�ѵ�캡');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_ZONE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANI_SPECIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANI_SPECIES
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('011','�ô���','�����������ҧ���� �ô������ѵ������§�١���¹�ӹ���������˭����ش ������ǵ������Ƕ֧⤹�ҧ 3.6-5 ���� �����٧ 1.6-2 ���� ���˹ѡ���� 2.3-3.6 �ѹ ����չ�ӵ��������ͧ�������� ���˹ѧ���ǵ������բ� ¡��鹢�����������Т��ҧ ��˹����� 0.6 ���� ��ҧ����Ҩ��ǡ��� 1.50 ���� �ô�������ջҡ�����ٻ�����������ѵ���� ����յ�觤���§ǧ ����ǡ����ô�� ��л��������� ˹�Ҽҡ�Ҵ����������ô�� �������ٹ�繡�͹ ���˹ѧ�繵����ٹ���¡����ô��','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/11.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('012','�������','	�����ͪ�Դ�˭����ش㹻������ ��������ͧ������������ͧ����ӵ�� ����´���ǾҴ��ҧ��駵�� �ҧ������´ӾҴ��ҧ�蹡ѹ �٤�����繻��ͧ � �����ҧ�� ��ѧ�ٴ�����ըش�բ�ǹ���˭������Ѵ','004','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/12.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('013','���ͪյ��','�������ٻ��ҧ����� �բ�Ҵ��硡������ʹ����硹��� ����� �բ���Һ������ͧ��͹���֧����ͧ��ᴧ ����ӵ��������繨ش�մ� �����ҧ˹��������ǧ��ǹ�մ� �����ش���բ�� ������մӨҡ����ǵ�������ҡ����ͧ��ҧ ����硡�� �����·����ǵ�駢����ἧ ����� �����ͷ��������Ƿ���ش ����ö��������Ƕ֧ 100-110 �������õ�ͪ������','004
','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/13.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('014','��դ���','�Ѵ����շ���բ�Ҵ�˭� ��������ӵ�ǻ���ҳ 120 - 150 ૹ������ �ҧ��� 6.5 - 10 ૹ������ ���˹ѡ����ҳ 100 - 160 ���š��� �������Һ�մӷ�駵�� ������ٻ����� ���˭� ���¨�١��͹��ҧ�� ��������������� �ѡ�Թ��������� �ҡ��� ���ҧ��� ����������բ����������ͧ ����ҷ��������������� �����ҷ�Ѻ���蹴��ҡ','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/14.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('033','��ҡ����','�繻�ҹ�Ө״��Դ����紷���բ�Ҵ�˭����ش��š��Դ˹�� �繻�ҹ�Ө״�Ӿǡ��ҵ���¹����բ�Ҵ�˭����ش��š �ӵ�Ǥ�͹��ҧ����ẹ��ҧ ����ӵ������������ �ѹ��ѧ���չ�ӵ������ ��ҹ��ҧ�����ǹ��ͧ���ըҧ���� �ѡɳ��蹢ͧ��Ҫ�Դ����� ������������˭�Դ���� ����ռ�����º�ѹ�������紤��� ������Ǣͧ��ǻ���ҳ 1�3 �ͧ�ӵ�� ���������⻹ ����ջҡ��ҧ˹��������͡�Ҿ�����ջҡ��ҹ�� �ҡ���ҧ �ҡ������Ƕ֧����ǳ�� �տѹ����������������ҧ���� �����˹Ǵ ����բ�Ҵ�˭�ͺ���º ��պ��ѧ�٧�������ç�Ѻ��պ��ͧ ��պ�鹤�͹��ҧ��� ��պ�ҧ��ᶺ�����֡ ��պ�ء�ѹ����ᴧ����� ��ҵ�Ǽ�����ӵ������������� ��ǹ��ͧẺ���º������մӤ��ӡ��ҵ������','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/33.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('015','�������ᴧ','	�繹���Ҵ��ҧ ��Ҵ�ӵ�ǻ���ҳ 40 - 46 ૹ������ ��Ǽ����е���������ѡɳ�����͹�ѹ ���չ�ӵ��ᴧ ʴ�� ����� �� ���˹��͡�բ��������մ����� ����� ���ҺԹ������ҧ�ҧ�͡��͹��ҧ��� �ջҡ���������� ����բ�������ͧ','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/15.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('016','˧���','��Ǽ�����բ����ǵ�Ǵ����� ¡��鹢��ա����Ѻ�Թ��������ҹ�鹷�����բ�ǫ�觵Ѵ�Ѻ�ӵ������� �Ѵ�дش�� ��¹����ᴧ��� �Ч�»ҡ��ᴧ����ᶺ��� ���»ҡ ���������մ� ˧��ӵ����������͹��Ǽ��ء���ҧ ���բ�Ҵ��硡�������Ӥ���鹡�����硹���','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/16.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('017','����Ш͡��','�繹��˭����ش��š �շ��������¡ѹ 6 ��Դ �¡�ѹ�¢�Ҵ����բͧ���˹ѧ �դ����٧����� 2.5 ���� ˹ѡ�֧ 160 ���š��� �ջա��硺Թ����� ����˭����ç �չ�����Ң�ҧ�� 2 ���� ���������֧ 64 �������õ�ͪ������ ��Ǽ�颹���ǵ���մ� �袹�ǧ���»ա�ҧ���բ�� ����Ш͡���բ�����ǳ�ӵ�� �ա ����ҧ��ҹ�� ��ǹ��� �� ��Т�����բ���� ������¢��չ�ӵ�Ť���','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/17.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('018','���٧�Թ���','�ٻ��ҧ��Т�Ҵ����͹���٧�� ��ҧ�ѹ�ç��袹��躹��Ǣͧ���٧�����ѡɳ��繨ء ��ͧ���٧�Թ�����ҧ�͡����͹�Ѵ ����բͧ�������Ǣͧ���٧������������ ��ͧ���٧�Թ����չ���Թ ���բ�Ǩҡ��١�֧�ͺ�Ҵ�ҹ����¹�� ��Т�ҧ��ͺ��','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/18.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('019','����������','�繹���Ǣ�Ҵ��ҧ �դ�������ӵ�� 33 ૹ������ ���������õ�Ǽ�����ѡɳ�ᵡ��ҧ�ҡ������¤�� �����������ǧ�����ᶺ�մӺ���ǳ�ͺ�� ��ǹ������º����������һ���ǧ��������ᶺ�մ��ͺ�� �͡�ҡ����������ѡɳ�����͹�ѹ��� �ӵ�Ƿ������������ ��ҹ��ҧ������ͧ������ �˹���������ժ���ʴ �ա��ᶺ��ᴧ','001
','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/19.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('020','���Һ���','	�繹���Ӣ�Ҵ�˭��դ����٧����׹ ����ҳ 90 ૹ������ ���ӵ���բ�� ����������´�մ�����ͺ���Ǻ���ѧ ���������ժ������ҧ�մ͡����Һ���ա�����ǹ��ѧ�͹��ҧ ͡�����ᶺ�մӤҴ ���ա�Թ��Т��ҧ���մ� �Ч�»ҡ���͡����ͧ ˹ѧ���˹��������ͧ���ѹ ���չ�ӵ�Ũ��֧����ͺᴧ �����ع��¢����ӵ�Ǩ����չ�ӵ����͹ ���ç��ǹ������µ���ͺ�մ� �����������ᶺ�Ҵ����ǹ͡','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/20.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('021','��������','�բ�Ҵ��͹��ҧ�˭� ��Ǽ����е���������ѡɳ�����͹�ѹ ���������лա����������ǧ �����Ф��մ� �ҧ�մ� �ҡ��ᴧ ����ᴧ �Ҥ�͹��ҧ�����лҡ���ѡɳ�����硹���','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/21.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('001','������','���ѵ��պ����� ���ѡɳТͧ�ѵ�����ª�Դ��������ѹ㹵�� ����Ǥ�� �ٻ��ҧ�������� 
�պ��Ҥ�����ô ��١�������ջҡ���������͡�Ҥ���§ǧ��ҧ �ҧ��鹤�����ҧ���
 �������鹡�� ����� ����Ѻ�١�����稷���Դ�����Ǩ���¤����ᵧ�� �����չ��
�����Ѻ��� ��¹������͹������������ػ���ҳ 6 ��͹ �¨�����������繢����
㹪�ǧ��ҧ�ӵ�� ��ǹ��蹨����մ������ǡѺ������ 
','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/01.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('002','����͡','����͹�駸����������բ�ǻ�ʹ��駵��','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/02.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('003','�ԧ���ѧ�صѧ','	���ԧ������ٻ��ҧ����¤� ������ҧ �բ�Ҵ�˭��Ǽ��˹ѡ 75�100 ���š��� �������˹ѡ 45�68 ���š��� ᢹ�����������Ф�͹��ҧ��� �բ������Һ�ا�ѧ�չ�ӵ��ᴧ ������ҡ�������º�Ѻ�ͧ���ỹ����С������� ��Ǽ����նا�������¢�Ҵ�˭� ������ѹ���˹��������� ��о���������ԭ���������繶ا��Ҵ�˭������Ѵ ����� ����ѧ�صѧ� ����������� �դ���������� �����Ҕ �ԧ���ѧ�صѧ�� 2 �ѹ��� ��� �ѹ������ҵ����оѹ����������','005','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/03.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('004','�Ի������','	���ѵ�������ٻ��ҧ����˭���з� ����ջҡ���ҧ�ҡ �������ҧ����������ظ�Ӥѭ��Шӵ�� ˹ѧ˹��յ������͡ �ӵ������բ� ���բ�੾���ͺ�ҡ ������Ѻ�����ҧ ���˹ѧ���˧��������͡��ᴧ��͹��������ʹ','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/04.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('005','��ҧ','��Ǽ���է����¡��� "��ҧ����" ��ҧ�������է����¡ "��ҧ�մ�" ������»�������է����¡ "��ҧ�ѧ" ��ҧ����Ҩ�է���� � ���¡��� "����" ˹ѧ����ǳ�ӵ��˹���� 1.9-3.2 ૹ������ ���ѵ����������� �տѹ 26 ��� �Ҥ�Ϳѹ�Ѵ�������¹�ŧ� ��١�繧ǧ��� ��ѧ�������ٻ����ʹ����ѧ ���˹������� 5 ��� �����ѧ�� 4 ��� ���§ǧ�յ�� ���˹ѡ����ҳ 3-4 �ѹ','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/05.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('006','Ᾱ���','Ᾱ����ѡ��������ժ��Ե����դ��� ����ѡ�ҡ����ش��Դ˹�觢ͧ�š ����ǹ�˭�Դ���Ᾱ����ѡ�����ѵ����ǹ�������������ʹ����ѡ �����ԧ����Ᾱ����ѡ������ѹ���������ǡѺ��ժ�Դ��� � ���ٻ��ҧ�������� �բ��մӷ�����ǳ��, �ͺ�ǧ��, �ͺ�ҡ��Ш�١, ��� ��Тҷ������ҧ ��ǹ��� � �ͧ��ҧ��»��������¢��բ�� �ѡ�Է����ʵ������Һ�˵ؼŷ����͹��ҷ���Ᾱ����ѡ��֧�բ��բ�Ǵ��š �����Ҵ�蹹�� �ҧ���Դ����ѡɳ��蹹���繻���ª��㹡�þ�ҧ��Ǻ���ǳ����������Ǵ �������������������� ��˹���лء��¢ͧ�ѹ�������ѡ�Ҥ���ͺ��蹢ͧ��ҧ����������ҡ�Ȩ�˹�� �Ѵ Ᾱ����ѡ���տѹ������Ҵ�˭���С�д١�ҡ�������ç�������ö��������� ���ᵡ�� Ᾱ����ѡ���բ�Ҵ�����§�Ѻ��մӢͧ����ԡ� ������ѹ�׹���Ҩ��դ����٧�ҡ��鹶֧����������ҳ 2-3 �ص �դ�����ǻ���ҳ 4-6 �ص ��Ǽ���բ�Ҵ�˭���ҵ������ ����Ҩ�չ��˹ѡ�ҡ���� 115 ��.����ѺᾹ����ѡ���������㹻�� ��ǹ���������ǹ�ҡ���չ��˹ѡ���֧ 100 ��.','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/06.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('029','��������','�繧ٷ���բ�Ҵ�˭������Ƿ���ش��š �ջҡ�˭� �ѹ������ �ҡ���� ���ç�ҡ ��鹵���չ�ӵ��ᴧ ���������ǧ�������� ��������������մӨ���ͺ�֧���»ҡ ��ǹ��ͧ�բ��','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/932feaaa.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('035','����ô��͡','	�繻�Ң�Ҵ�˭����ش�����ǧ������� �ѡɳе�ҧ���͡���բ�����������������ʹ��Ѵਹ','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/35.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('022','������ѧ���','	������ѧ��� �繹���Ҵ��ҧ - �˭� ������Ǩҡ���»ҡ�֧�����ҧ ����ҳ 50 - 125 ૹ������ 㹻�����¾� 2 ��Դ���� ��� ������ѧ��� ���������ѧ��Ǩѹ�ú�� ��Ǽ���բ�˧͹������չ���Թ����Ǥ������·�� �˹������˹ѧ��ᴧ ���͹���ͧ�ӵ����ǹ�˭���лա�բ���������͹�Թ ���������鹺ҧ � �մ����ٻ����� (V) ���躹�� ��������բ�˧͹������չ���Թ������͹�ѹ ������§��硹��¾��ѧࡵ�����ҹ�� ����������ǹ�˭��չ�ӵ�Ť��� ����ᴧ ���������','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/22.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('023','����͡����ô','�繹���͡����բ�Ҵ��͹��ҧ�˭� �դ�������ӵ�ǻ���ҳ 120 ૹ������ ��Ǽ����е���������ѡɳ�ᵡ��ҧ�ѹ��硹��� �µ�������բ�Ҵ�ӵ����硡��ҵ�Ǽ����硹��� ���˹�����ǳ����еҫմ���ҵ�Ǽ�� �͡����դ�������¤�֧�ѹ�ҡ �����ա��е���մ� ��ͧ����ҧ���բ�������ᶺ�մӾҴ�����ҧ�ç�������ҧ ����¡Ѻ�����ѧ �˹�����ǳ�˹�ͻҡ���ٻ�駢�鹷ҧ��ҹ�� �ç⤹�˹�����ᴧ����ǳ�͹˹�Ңͧ��ǹ����駢�鹷ҧ��ҹ��','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/23.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('024','���ˡ��','����ҷ���բ�Ҵ�˭����ش������ ��дͧ��� � �ص ˹ѡ �� -�� ���š��� ���մ����͹�ӵ�Ŵ� ��дͧ���٧�ҡ ��˹�Ҵ�ҹ��������˭� ����ѧ��鹷������纡���˭� ���������������ҧ����ѧ�Ѻ�ҧ��ҧ���ѹ �����ա�д١�����ҧ� ����Ѻ���ѹ��鹴Թ���һչ��鹷���٧�֧�٤�����բ������ա � �� ��ˡ�� �֧���¡��� ����ˡ�','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/24.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('025','��괵��','�ӵ����� 50-125 ૹ������ �������硵������»ҡ�֧��������֧ᴧ��� �������ըШҧŧ �բմ�մӵ����ͺ�Ҷ֧�� �ӵ���բ���������ͧ�����Ͷ֧�����ҧ ��괵�����ѵ������硷���ش㹡�����ѵ��Ӿǡ�����-�СǴ��辺��� ������� ������ѵ������վ��','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/25.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('026','������Ө״','	������Ө״��Ǽ���բ�Ҵ��硡��ҵ�� �����բ�Ҵ��ǻ���ҳ 12 �ص ���Ǽ�����ҧ��ǡ��ҵ������ ����ѡ�ըӹǹ��紷����ҧ�ҡ���� ������Ө״��Ƿ����鹡��Ҩ��������� ����紷��·��� 4 ������§�����繪Ѵ �����ѧ�վѧ�״��硹��� �ҧ������ա��ѧ�ҡ��⺡�Ѵ��Ҫ���㹡�����¹�� ���������ظ ����ö�Ҵ�ҧ����餹�����ѵ�����Ѻ�ѹ������ ������������㹡�����¹��','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/44659800.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('027','������','	������ �繧ٺ���Ҵ��ҧ �������� ��� �� ��ӵ�� �������� ����ͧ��� �������բ�� �շ�駷������µ����� �������������� �繧ٷ�����ѹ���� ����´� ���Ѵ ������Դ�ҡ�õ���ѡ�����§������ ����繧ٷ���վ�������ç ����ͧ����ٷҧ�͡�ͧ��Ӿ�ɷҧ��ҹ��ѧ�ͧ����Ǿ�� ����Ǿ�ɢ�Ҵ����˭�ѡ��觼�֡�Դ�蹡Ѻ�ҡ���â�Ѻ����� �͡�ҡ����Ǿ�������Ҩ����������ͧ����Դ � �ѹ�ա 1 - 2 �ѹ ���ҡ������ҧ����տѹ ������������������ �դ�����ǻ���ҳ 120-150 ૹ������ �������º�����ǹ���ǧ���������ö�������������ҧ����ش���Ҫ�Դ��� ¡��Ǫ٤�������������٧����ش����ҳ 1 � 3 �ͧ��������ӵ�� ��紺�����բ�Ҵ�˭�','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/f45e2aed.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('028','������','	�繧ٷ���բ�Ҵ�˭��ҡ �ӵ����ǹ��� �ҧ�������������͹�������� �������¼Դ�Ѻ�������� ��·����ǼԴ�Ѻ�����������ҧ�����Ѵ ��ᶺ�բ�Ǩҡ����ǳ������·�µ�ͨҡ�ӵ���Ҩô�ѹ�����¨�١ ���ѡɳ��ٻ˹�Ҩ�������÷������բ��','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/f9bfa0e5.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('030','�٨��ҧ','�繧پ�ɷ���բ�Ҵ�˭����ش��š ��ǡ������˭� ����������� �������´͡�ѹ���ҧ������ ������§������§����� �ӵ���������� �繧��չ�ӵ��ᴧ����������ǹ�ҡ ������պ�ҧ ��ͧ�ͧ�٨��ҧ����ͧ��ͺ��� ����ѡ����ᴧ�������','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/26649ae4.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('031','�������ҧ����','�������ҧ���������ª�Դ ���������˭� ����� �����ǹ��� �����ҧ����ᴧ�Ѵਹ �ӵ����������������ͧʴ �ҧ�����������������Թ �ҧ��ᴧʴ �ҧ������ҧ��ᴧ������ͺ���չ�ӵ�� �繧پ����͹ ����Ͷ١�Ѵ�лǴ�ҡ ������������ѹ �����֧�Ѻ���ª��Ե �͡�ҡ������ä�á','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/ec35aa09.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('032','��Һ֡','�Ѵ�繻�ҹ�Ө״����������紷���� ��Ҵ�˭� �ӵ���դ��������ͺ 3 ���� ����չ��˹ѡ�ҡ���� 250 ���š��� �ӵ�����ѡɳ�������ẹ��ҹ��ҧ ��ǹ��Ǥ�͹��ҧ�˭� ���բ�Ҵ��� ����տѹ ��˹Ǵ���� ���ҡ���ú� 1 ����͹�������ͧ�ç�������ҡ 㹢���ժ��Ե���ӵ�Ǩ��������͡ᴧ�ҧ��ҹ��ѧ ���Ǥ���� ��������������ҷҧ��ҹ��ҧ ����բ�Ƿҧ��ҹ���ͧ �ըش�Өش˹�觷ҧ��ҹ��ҧ�ç���˹觻����ش�ͧ��պ�� ��Шش���ա����ش����պ�ҧ ��պ�ء��պ�����Ҩҧ�','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/74d663c6.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('007','�ԧ���ỹ��','���ԧ���������ҧ ����¤��ҡ ᢹ��Т��դ�����Ǿ� � �ѹ ��ͧ��ԭ�ҡ���������ǩ�Ҵ�������ѧ�صѧ��С������� ������ѭ����ͺ��������� ����ö�Թ�ç���������Ҩ��ѹ仢�ҧ�͡ �����Թ��Ǩ��͹仢�ҧ˹�� ᢹ�ç ����ҧ������ŧ����� �ҹ� ���駨��Թ 2 ���Ẻ������ ���㹡���ԹẺ��� �ԧ���ỹ�ը�����������ҧ��ѧ���ͪ���㹡�÷ç��� ���ͪ���ͷ�� 2 ��ҧ����٧ ��Ǽ���٧��� 5 �ص ��ǹ��������٧��� 4 �ص ���ҡԹ��Ө���ҡ���ŧ�����µç �������ͨ�����Ӣ��������͹�й� ���¹������� �դ����Ӵ��ҡ ���������������֡�����ǡѺ�','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/07.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('008','�ԧ�','�ԧ��Ϳ�ԡ� ����ԧ��Թ���������ѡɳз��ᵡ��ҧ�ѹ �ԧ��������º�������ҧ���� ��Ǽ�������������բ���Ǣ���ͺ�� ��ʧ�ҹ���ç��� �����������բ��ͺ�� �ç�����ҧ�բ�����繾��','004','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/08.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('009','���ҿ','���ѵ�캡����٧����ش �դ�����ҡ ��Ǽ������ǹ�٧����ҳ 18 �ص ���˹ѡ����ҳ 1,100 - 1,932 ���š��� �����������ǹ�٧����ҳ 17 �ص ���˹ѡ����ҳ 700 - 1,182 ���š��� ���ҷ��㹵�Ǽ����е������ ����Ѵ�� ���բ����������� ˹ѧ�բ�����չ�ӵ�� ����¢���š�� �ҡ��������� ������ջҡ ��������ǹǹ�Ѻ������ ����ҹ� 4 ���','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/09.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('010','������','�������㹷�ջ�Ϳ�ԡ�ᶺ����Һ��觷ҧ�͹��ͧ���ŷ��«������','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/10.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('034','����','���� �������е�ҧ�ء� ��ǹ����͹�Ѻ�ѵ������§�١���¹������ �ҡ������ǹ�ͧ������ �л�Ѻ����¹��ҧ仨ҡ�ѵ������§�١���¹������ �ѧ��� ��١ �����ը�١������� ���١��鹵�ҧ仨ҡ��١�ͧ�ѵ�� ���� ���е�������ҧ����������·����� ��������дǡ��͡���Դ��Ǣ�������˹�͹�� �ҡ��١�շ�����㨵��ŧ�Ҷ֧�ʹ㹵�� �֧�����繵�ͧ����Ӽ�ҹ�˧�͡����㹻ʹ���ͪ�����������͹��ҷ���� �� �٢ͧ���ҹ������§������硨��ǵԴ��ٴ�ҹ��ҧ�ͧ�����ҹ�� ���٢ͧ�����ջ���Է���Ҿ�٧�ҡ �Ѻ�������§���������ҧ�ʹ������ ��੾�СѺ���ҷ������������áѹ�������§����դ��蹤�������٧ ����ͧ��� �����մǧ������� ����͹���ѵ������§�١���¹� �����͡�һԴ�� �������� ��ҧ�׹�ҡ���繻�С�� ����͹�����','005','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/34.jpg');

---------------------------------------------------
--   END DATA FOR TABLE ANI_SPECIES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ZOO_EMPLOYEES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ZOO_EMPLOYEES
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a001','���ѭ��','�ت���ѵ��',to_timestamp('16-AUG-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-1234567','006',to_timestamp('12-MAR-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),50000,null);
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a002','�ع���','��¡�Ш�ҧ',to_timestamp('23-JUL-91 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'088-5555555','005',to_timestamp('15-MAR-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),20000,'a001');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a003','�ѭ��Ѫ�� ','ͧ�������Ѳ����',to_timestamp('01-NOV-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-8976589','002',to_timestamp('01-JUL-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),20000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a004','˷���ѵ��','�س�Ѫ����è��',to_timestamp('03-NOV-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-1238754','001',to_timestamp('13-AUG-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a005','�ѹ����','�ح���',to_timestamp('25-AUG-91 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'081-4569873','001',to_timestamp('13-AUG-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a006','����ҳ�','���»�Фͧ',to_timestamp('30-JAN-89 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-5643245','003',to_timestamp('14-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a007','���','����',to_timestamp('19-SEP-88 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-6794356','004',to_timestamp('15-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),16000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a008','�ԡ���','��͡',to_timestamp('28-MAR-87 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-2356745','001',to_timestamp('20-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a009','���','���',to_timestamp('12-NOV-89 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-6789876','002',to_timestamp('20-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a010','���','���',to_timestamp('07-JUL-85 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-7658943','003',to_timestamp('24-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a011','ᨤ','���',to_timestamp('03-SEP-87 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'085-6789345','004',to_timestamp('25-FEB-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),16000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a012','�','���',to_timestamp('05-OCT-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'081-4579834','003',to_timestamp('23-MAR-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a013','���','�������',to_timestamp('21-DEC-87 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-5673456','004',to_timestamp('01-APR-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a015','���','���',to_timestamp('28-NOV-88 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'088-5679845','002',to_timestamp('25-APR-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a016','�ͧ','�Ժ',to_timestamp('10-MAY-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-2345987','003',to_timestamp('01-MAY-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),14000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a017','����','����',to_timestamp('20-AUG-85 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-4579123','004',to_timestamp('25-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),14000,'a005');

---------------------------------------------------
--   END DATA FOR TABLE ZOO_EMPLOYEES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ZOO_JOBS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ZOO_JOBS
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('005','���Ѵ���','���Ѵ�������Ἱ�');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('006','��������','�������ǹ�ѵ��');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('001','��ѡ�ҹ��Ǩ�ͺ�����','��Ǩ�ͺ������ѵ��,���������ѵ��');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('002','�ѵ�ᾷ��','�����آ�Ҿ�ѵ��,��Ǩ�ѡ���ä�ѵ��');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('003','��ѡ�ҹ�Ӥ������Ҵ','�Ӥ������Ҵ�����������¢ͧ�ѵ��');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('004','��ѡ�ҹ�Ѵ�ʴ����','�ӡ�èѴ�ʴ�����ѵ��');

---------------------------------------------------
--   END DATA FOR TABLE ZOO_JOBS
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table ANI_SPECIES
--------------------------------------------------------

  ALTER TABLE "ZOO"."ANI_SPECIES" MODIFY ("ANI_SPECIES_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANIMAL_ZONE
--------------------------------------------------------

  ALTER TABLE "ZOO"."ANIMAL_ZONE" ADD CONSTRAINT "ANIMAL_ZONE_PK" PRIMARY KEY ("ZONE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ZOO"."ANIMAL_ZONE" MODIFY ("ZONE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ANIMAL_ZONE" MODIFY ("ZONE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANIMAL_TYPE
--------------------------------------------------------

  ALTER TABLE "ZOO"."ANIMAL_TYPE" ADD CONSTRAINT "ANIMAL_TYPE_PK" PRIMARY KEY ("ANI_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ZOO"."ANIMAL_TYPE" MODIFY ("ANI_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ANIMAL_TYPE" MODIFY ("ANI_TYPE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANIMAL
--------------------------------------------------------

  ALTER TABLE "ZOO"."ANIMAL" ADD CONSTRAINT "ANIMAL_PK" PRIMARY KEY ("ANIMAL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ZOO"."ANIMAL" MODIFY ("ANIMAL_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ANIMAL" MODIFY ("ANI_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ANIMAL" MODIFY ("ANI_GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ANIMAL" MODIFY ("ZONE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ANIMAL" MODIFY ("ANI_SPECIES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZOO_JOBS
--------------------------------------------------------

  ALTER TABLE "ZOO"."ZOO_JOBS" MODIFY ("JOB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_JOBS" MODIFY ("JOB_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_JOBS" ADD CONSTRAINT "ZOO_JOBS_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZOO_EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "ZOO"."ZOO_EMPLOYEES" MODIFY ("EMP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_EMPLOYEES" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_EMPLOYEES" MODIFY ("LAST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_EMPLOYEES" MODIFY ("JOB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_EMPLOYEES" MODIFY ("SALARY" NOT NULL ENABLE);
 
  ALTER TABLE "ZOO"."ZOO_EMPLOYEES" ADD CONSTRAINT "ZOO_EMPLOYEES_PK" PRIMARY KEY ("EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Index ANIMAL_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZOO"."ANIMAL_TYPE_PK" ON "ZOO"."ANIMAL_TYPE" ("ANI_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ZOO_JOBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZOO"."ZOO_JOBS_PK" ON "ZOO"."ZOO_JOBS" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ANIMAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZOO"."ANIMAL_PK" ON "ZOO"."ANIMAL" ("ANIMAL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ANIMAL_ZONE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZOO"."ANIMAL_ZONE_PK" ON "ZOO"."ANIMAL_ZONE" ("ZONE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ZOO_EMPLOYEES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ZOO"."ZOO_EMPLOYEES_PK" ON "ZOO"."ZOO_EMPLOYEES" ("EMP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;






