--------------------------------------------------------
--  File created - วันจันทร์-กันยายน-12-2554   
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
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('001','ไมโล',to_timestamp('12-MAR-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','M','001','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/01.jpg');
Insert into ZOO.ANIMAL (ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID,ANI_SPECIES_ID,ANI_PIC) values ('002','เมเปิ้ล',to_timestamp('15-JAN-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),null,null,'004','F','002','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/02.jpg');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANIMAL_TYPE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANIMAL_TYPE
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('001','สัตว์ปีก');
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('002','สัตว์เลื้อยคลาน');
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('003','สัตว์น้ำ');
Insert into ZOO.ANIMAL_TYPE (ANI_TYPE_ID,ANI_TYPE_NAME) values ('004','สัตว์เลี้ยงลูกด้วยนม');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_TYPE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANIMAL_ZONE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANIMAL_ZONE
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('007','โซนสัตวืครึ่งบกครึ่งน้ำ');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('001','โซนสัตว์ปีก');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('002
','โซนสัตว์เลื้อยคลาน');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('003','โซนสัตว์น้ำ');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('004','โซนสัตว์ดุร้าย');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('005','โซนจัดแสดง');
Insert into ZOO.ANIMAL_ZONE (ZONE_ID,ZONE_NAME) values ('006','โซนสัตว์บก');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_ZONE
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANI_SPECIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ANI_SPECIES
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('011','แรดขาว','ถ้าไม่รวมช้างแล้ว แรดขาวเป็นสัตว์เลี้ยงลูกด้วยน้ำนมบนบกที่ใหญ่ที่สุด ความยาวตั้งแต่หัวถึงโคนหาง 3.6-5 เมตร ไหล่สูง 1.6-2 เมตร น้ำหนักปกติ 2.3-3.6 ตัน ผิวสีน้ำตาลอมเหลืองหรือสีเทา ผิวหนังทั่วตัวไม่มีขน ยกเว้นขนที่ปลายหูและขนหาง นอหน้ายาว 0.6 เมตร แต่บางตัวอาจยาวกว่า 1.50 เมตร แรดขาวริมฝีปากบนเป็นรูปสี่เหลี่ยมจัตุรัส ไม่มีติ่งคล้ายงวง หูยาวกว่าแรดดำ และปลายหูแหลม หน้าผากลาดและมนกว่าแรดดำ หัวไหล่นูนเป็นก้อน ผิวหนังเป็นตุ่มนูนน้อยกว่าแรดดำ','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/11.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('012','เสือโคร่ง','	เป็นเสือชนิดใหญ่ที่สุดในประเทศไทย ขนสีเหลืองปนเทาหรือเหลืองปนน้ำตาล มีลายดำยาวพาดขวางทั้งตัว หางก็มีลายดำพาดขวางเช่นกัน ดูคล้ายเป็นปล้อง ๆ ปลายหางดำ หลังหูดำและมีจุดสีขาวนวลใหญ่เห็นได้ชัด','004','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/12.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('013','เสือชีต้า','เป็นเสือรูปร่างเพรียว มีขนาดเล็กกว่าเสือดาวเล็กน้อย ขายาว มีขนหยาบสีเหลืองอ่อนจนถึงเหลืองอมแดง ตามลำตัวมีลายเป็นจุดสีดำ ปลายหางหนึ่งในสามมีวงแหวนสีดำ ปลายสุดเป็นสีขาว มีเส้นสีดำจากใต้หัวตามามุมปากทั้งสองข้าง หูเล็กกลม ขนท้ายทอยยาวตั้งขึ้นเป็นแผง คอสั้น เป็นเสือที่วิ่งเร็วที่สุด สามารถวิ่งได้เร็วถึง 100-110 กิโลเมตรต่อชั่วโมง','004
','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/13.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('014','หมีควาย','จัดเป็นหมีที่มีขนาดใหญ่ ความยาวลำตัวประมาณ 120 - 150 เซนติเมตร หางยาว 6.5 - 10 เซนติเมตร น้ำหนักประมาณ 100 - 160 กิโลกรัม ขนยาวหยาบสีดำทั้งตัว ใต้คอเป็นรูปตัววี หูใหญ่ ปลายจมูกค่อนข้างดำ เล็บเท้าโค้งยาวแหลม มักเดินด้วยส้นเท้า ปากยาว มีหางสั้น ปลายเท้ามีสีขาวหรือเหลือง ประสาทตาและหูไม่ค่อยไว แต่ประสาทรับกลิ่นดีมาก','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/14.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('033','ปลากะโห้','เป็นปลาน้ำจืดชนิดมีเกล็ดที่มีขนาดใหญ่ที่สุดในโลกชนิดหนึ่ง เป็นปลาน้ำจืดจำพวกปลาตะเพียนที่มีขนาดใหญ่ที่สุดในโลก ลำตัวค่อนข้างป้อมแบนข้าง พื้นลำตัวสีเทาแซมชมพู สันหลังเป็นสีน้ำตาลอมดำ ด้านข้างและส่วนท้องมีสีจางกว่า ลักษณะเด่นของปลาชนิดนี้คือ มีหัวยาวและใหญ่ผิดปกติ หัวมีผิวเรียบมันไม่มีเกล็ดคลุม ความยาวของหัวประมาณ 1ใน3 ของลำตัว ตาโตและยื่นโปน ริมฝีปากล่างหนาและยื่นออกมาพ้นริมฝีปากด้านบน ปากกว้าง ขากรรไกรยาวถึงบริเวณตา มีฟันที่คอหอยเป็นแถวอยู่ข้างละแถว ไม่มีหนวด เกล็ดมีขนาดใหญ่ขอบเรียบ ครีบหลังสูงและอยู่ตรงกับครีบท้อง ครีบก้นค่อนข้างยาว ครีบหางเป็นแถบเว้าลึก ครีบทุกอันมีสีแดงปนส้ม ปลาตัวผู้มีลำตัวเล็กและเรียว ส่วนท้องแบบเรียบและมีสีดำคล้ำกว่าตัวเมีย','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/33.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('015','เหยี่ยวแดง','	เป็นนกขนาดกลาง ขนาดลำตัวประมาณ 40 - 46 เซนติเมตร ตัวผู้และตัวเมียมีลักษณะเหมือนกัน ขนสีน้ำตาลแดง สดใส แต่หัว คอ และหน้าอกสีขาวมีลายสีดำเล็กๆ ทั่วไป เวลาบินจะเห็นหางกางออกค่อนข้างกลม มีปากแหลมคมสีเทา และมีขาสีเหลือง','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/15.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('016','หงส์ดำ','ตัวผู้มีสีขนทั่วตัวดำอมเทา ยกเว้นขนปีกสำหรับบินเส้นยาวเท่านั้นที่เป็นสีขาวซึ่งตัดกับลำตัวเห็นเด่น ชัดสะดุดตา นัยน์ตาสีแดงเข้ม จะงอยปากสีแดงแต่มีแถบขาว ปลายปาก ขาและเท้าสีดำ หงส์ดำตัวเมียเหมือนตัวผู้ทุกอย่าง แต่มีขนาดเล็กกว่าและลำคอสั้นกว่าเล็กน้อย','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/16.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('017','นกกระจอกเทศ','เป็นนกใหญ่ที่สุดในโลก มีทั้งหมดด้วยกัน 6 ชนิด แยกกันโดยขนาดและสีของผิวหนัง มีความสูงเฉลี่ย 2.5 เมตร หนักถึง 160 กิโลกรัม มีปีกเล็กบินไม่ได้ แต่ขาใหญ่แข็งแรง มีนิ้วเท้าข้างละ 2 นิ้ว วิ่งเร็วได้ถึง 64 กิโลเมตรต่อชั่วโมง ตัวผู้ขนทั่วตัวสีดำ แต่ขนพวงปลายปีกหางเป็นสีขาว นกกระจอกเทศมีขนบริเวณลำตัว ปีก และหางเท่านั้น ส่วนหัว คอ และขาไม่มีขนเลย ตัวเมียขนสีน้ำตาลคล้ำ','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/17.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('018','นกยูงอินเดีย','รูปร่างและขนาดเหมือนนกยูงไทย ต่างกันตรงที่ขนพู่บนหัวของนกยูงไทยมีลักษณะเป็นจุก แต่ของนกยูงอินเดียแผ่กางออกเหมือนพัด และสีของขนตามตัวของนกยูงไทยสีเขียวใบไม้ แต่ของนกยูงอินเดียสีน้ำเงิน มีสีขาวจากจมูกถึงขอบตาด้านบนนัยน์ตา และข้างใต้ขอบตา','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/18.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('019','นกแก้วหัวแพร','เป็นนกแก้วขนาดกลาง มีความยาวลำตัว 33 เซนติเมตร นกแก้วหัวแพรตัวผู้มีลักษณะแตกต่างจากตัวเมียคือ บนหัวมีสีม่วงและมีแถบสีดำบริเวณรอบคอ ส่วนตัวเมียบนหัวมีสีเท่าปนม่วงและไม่มีแถบสีดำรอบคอ นอกจากนั้นแล้วมีลักษณะเหมือนกันคือ ลำตัวทั่วไปมีสีเขียว ด้านล่างสีเหลืองอมเขียว ใบหน้าและหัวสีชมพูสด ปีกมีแถบสีแดง','001
','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/19.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('020','นกกาบบัว','	เป็นนกน้ำขนาดใหญ่มีความสูงขณะยืน ประมาณ 90 เซนติเมตร ขนลำตัวสีขาว มีลายละเอียดสีดำเหลือบเขียวบนหลัง และมีแต้มสีชมพูอย่างสีดอกกุหลาบบนปีกและส่วนหลังตอนล่าง อกมีลายแถบสีดำคาด ขนปีกบินและขนหางเป็นสีดำ จะงอยปากสีออกเหลือง หนังที่หน้าสีเหลืองเป็นมัน ขาสีน้ำตาลจนถึงสีเกือบแดง นกอายุน้อยขนบนลำตัวจะมีสีน้ำตาลอ่อน ขนตรงส่วนคอมีลายตามขอบสีดำ และไม่มีลายแถบคาดบนส่วนอก','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/20.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('021','นกโกโรโกโส','มีขนาดค่อนข้างใหญ่ ตัวผู้และตัวเมียมีลักษณะเหมือนกัน ขนบนหัวและปีกมีสีเทาอมม่วง หัวและคอสีดำ หางสีดำ ปากสีแดง ขาสีแดง ขาค่อนข้างยาวและปากมีลักษณะโค้งเล็กน้อย','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/21.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('001','สมเสร็จ','เป็นสัตว์กีบเดี่ยว มีลักษณะของสัตว์หลายชนิดอยู่รวมกันในตัว กล่าวคือ รูปร่างคล้ายหมู 
กีบเท้าคล้ายแรด จมูกและริมฝีปากมนยาวยื่นออกมาคล้ายงวงช้าง หางสั้นคล้ายหางหมี
 หูเล็กสั้นกลม ตาเล็ก สำหรับลูกสมเสร็จที่เกิดใหม่ตัวจะลายคล้ายแตงไทย แต่มีสีน้ำ
ตาลสลับขาว ลายนี้จะเลือนหายไปเมื่ออายุประมาณ 6 เดือน โดยจะเริ่มมีสีเป็นขาวเทา
ในช่วงกลางลำตัว ส่วนอื่นจะเป็นสีดำเช่นเดียวกับพ่อแม่ 
','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/01.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('002','เก้งเผือก','เหมือนเก้งธรรมดาแต่มีสีขาวปลอดทั้งตัว','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/02.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('003','ลิงอุรังอุตัง','	เป็นลิงที่มีรูปร่างคล้ายคน ไม่มีหาง มีขนาดใหญ่ตัวผู้หนัก 75–100 กิโลกรัม ตัวเมียหนัก 45–68 กิโลกรัม แขนยาวแต่ขาสั้นและค่อนข้างเล็ก มีขนยาวหยาบรุงรังสีน้ำตาลแดง หูเล็กมากเมื่อเทียบกับของชิมแปนซีและกอริลล่า ตัวผู้จะมีถุงลมใต้คอหอยขนาดใหญ่ เมื่อมันโตเป็นหนุ่มเต็มตัว กระพุ้งแก้มจะเจริญห้อยย้อยเป็นถุงขนาดใหญ่เห็นได้ชัด คำว่า “อุรังอุตัง” เป็นภาษามลายู มีความหมายว่า “คนป่า” ลิงอุรังอุตังมี 2 พันธุ์ คือ พันธุ์สุมาตราและพันธุ์บอร์เนียว','005','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/03.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('004','ฮิปโปโปเตมัส','	เป็นสัตว์ที่มีรูปร่างกลมใหญ่เทอะทะ และมีปากกว้างมาก เขี้ยวล่างยาวโค้งเป็นอาวุธสำคัญประจำตัว หนังหนามีต่อมเมือก ลำตัวไม่มีขน จะมีขนเฉพาะรอบปาก และใกล้กับปลายหาง ผิวหนังมีเหงื่อเป็นเมือกสีแดงอ่อนคล้ายเลือด','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/04.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('005','ช้าง','ตัวผู้มีงาเรียกว่า "ช้างพลาย" แต่บางตัวไม่มีงาเรียก "ช้างสีดอ" ตัวเมียปกติไม่มีงาเรียก "ช้างพัง" แต่บางตัวอาจมีงาสั้น ๆ เรียกว่า "ขนาย" หนังบริเวณลำตัวหนาราว 1.9-3.2 เซนติเมตร เป็นสัตว์กระเพาะเดียว มีฟัน 26 ซี่ งาคือฟันตัดที่เปลี่ยนแปลงไป จมูกเป็นงวงยาว หลังโก่งโค้งเป็นรูปโดมตลอดแนวหลัง เท้าหน้ามีเล็บ 5 เล็บ เท้าหลังมี 4 เล็บ ปลายงวงมีติ่ง น้ำหนักประมาณ 3-4 ตัน','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/05.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('006','แพนด้า','แพนด้ายักษ์เป็นสิ่งมีชีวิตที่มีความ น่ารักมากที่สุดชนิดหนึ่งของโลก คนส่วนใหญ่คิดว่าแพนด้ายักษ์เป็นสัตว์อ้วนเตี้ยอุ้ยอ้ายแสนน่ารัก แต่ที่จริงแล้วแพนด้ายักษ์ก็เป็นอันตรายเช่นเดียวกับหมีชนิดอื่น ๆ มีรูปร่างคล้ายหมี มีขนสีดำที่บริเวณหู, รอบดวงตา, รอบปากและจมูก, บ่า และขาทั้งสี่ข้าง ส่วนอื่น ๆ ของร่างกายปกคลุมด้วยขนสีขาว นักวิทยาศาสตร์ไม่ทราบเหตุผลที่แน่นอนว่าทำไมแพนด้ายักษ์จึงมีขนสีขาวดำแปลก ประหลาดเช่นนี้ บางคนคิดว่าลักษณะเช่นนี้เป็นประโยชน์ในการพรางตัวบริเวณร่มเงาในสิ่งแวด ล้อมที่เป็นหิมะและภูเขา ขนหนาและปุกปุยของมันช่วยเก็บรักษาความอบอุ่นของร่างกายได้ดีแม้อากาศจะหนาว จัด แพนด้ายักษ์มีฟันกรามขนาดใหญ่และกระดูกขากรรไกรแข็งแรงที่สามารถบดลำไม้ไผ่ ให้แตกได้ แพนด้ายักษ์มีขนาดใกล้เคียงกับหมีดำของอเมริกา เมื่อมันยืนสี่ขาจะมีความสูงจากพื้นถึงหัวไหล่ประมาณ 2-3 ฟุต มีความยาวประมาณ 4-6 ฟุต ตัวผู้มีขนาดใหญ่กว่าตัวเมีย และอาจมีน้ำหนักมากกว่า 115 กก.สำหรับแพนด้ายักษ์ที่อาศัยในป่า ส่วนตัวเมียส่วนมากจะมีน้ำหนักไม่ถึง 100 กก.','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/06.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('029','งูเหลือม','เป็นงูที่มีขนาดใหญ่และยาวที่สุดในโลก มีปากใหญ่ ฟันแหลมคม ขากรรไกร แข็งแรงมาก พื้นตัวสีน้ำตาลแดง มีลายแบ่งเป็นวงมีหลายสี ที่หัวมีเส้นศรสีดำจนเกือบถึงปลายปาก ส่วนท้องสีขาว','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/932feaaa.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('035','ปลาแรดเผือก','	เป็นปลาขนาดใหญ่ที่สุดอยู่ในวงศ์ปลาหมอ ลักษณะต่างๆจะออกเป็นสีขาวอมชมพูเห็นเส้นเลือดได้ชัดเจน','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/35.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('022','ไก่ฟ้าหลังขาว','	ไก่ฟ้าหลังขาว เป็นนกขนาดกลาง - ใหญ่ ความยาวจากปลายปากถึงปลายหาง ประมาณ 50 - 125 เซนติเมตร ในประเทศไทยพบ 2 ชนิดย่อย คือ ไก่ฟ้าหลังขาว และไก่ฟ้าหลังขาวจันทรบูร ตัวผู้มีขนหงอนบนหัวสีน้ำเงินแก่ยาวคลุมท้ายทอย ใบหน้ามีแผ่นหนังสีแดง ขนตอนบนของลำตัวส่วนใหญ่และปีกสีขาววาวเหมือนเงิน มีลายเป็นเส้นบาง ๆ สีดำเป็นรูปตัววี (V) อยู่บนขน ตัวเมียมีขนหงอนบนหัวสีน้ำเงินแก่เหมือนกัน แต่มีเพียงเล็กน้อยพอสังเกตเห็นเท่านั้น ขนตามตัวส่วนใหญ่สีน้ำตาลคล้ำ แข้งสีแดง ไม่มีเดือย','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/22.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('023','นกเงือกหัวแรด','เป็นนกเงือกที่มีขนาดค่อนข้างใหญ่ มีความยาวลำตัวประมาณ 120 เซนติเมตร ตัวผู้และตัวเมียมีลักษณะแตกต่างกันเล็กน้อย โดยตัวเมียมีขนาดลำตัวเล็กกว่าตัวผู้เล็กน้อย มีโหนกบริเวณหูและตาซีดกว่าตัวผู้ นอกนั้นมีความคล้ายคลึงกันมาก ขนบนปีกและตัวสีดำ ท้องและหางมีสีขาวและมีแถบสีดำพาดตามขวางตรงใกล้ปลายหาง คล้ายกับนกกาฮัง โหนกบริเวณเหนือปากเป็นรูปโค้งขึ้นทางด้านบน ตรงโคนโหนกมีสีแดงบริเวณตอนหน้าของส่วนที่โค้งขึ้นทางด้านบน','001','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/23.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('024','เต่าหกดำ','เป็นเต่าที่มีขนาดใหญ่ที่สุดในเอเชีย กระดองยาว ๒ ฟุต หนัก ๓๐ -๔๐ กิโลกรัม มีสีดำหรือน้ำตาลดำ กระดองโค้งสูงมาก ขาหน้าด้านบนมีเกล็ดใหญ่ ๆขาหลังสั้นทู่มีเล็บกลมใหญ่ มีเดือยอยู่ระหว่างขาหลังกับหางข้างละอัน เดือยมีกระดูกอยู่ข้างใน สำหรับใช้ยันพื้นดินเวลาปีนขึ้นที่สูงจึงดูคล้ายมีขาเพิ่มอีก ๒ ขา เป็นหกขา จึงเรียกว่า “เต่าหก”','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/24.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('025','ตุ๊ดตู่','ลำตัวยาว 50-125 เซนติเมตร เมื่อเล็กตั้งแต่ปลายปากถึงคอสีส้มถึงแดงเข้ม เมื่อโตสีจะจางลง มีขีดสีดำตั้งแต่ขอบตาถึงคอ ลำตัวมีขวั้นสีเหลืองตั้งแต่คอถึงปลายหาง ตุ๊ดตู่เป็นสัตว์ที่เล็กที่สุดในกลุ่มสัตว์จำพวกเหี้ย-ตะกวดที่พบได้ใน ประเทศไทย และเป็นสัตว์ไม่มีพิษ','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/25.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('026','จระเข้น้ำจืด','	จระเข้น้ำจืดตัวผู้มีขนาดเล็กกว่าตัว เมียมีขนาดยาวประมาณ 12 ฟุต แต่ตัวผู้มีหางยาวกว่าตัวเมีย และมักมีจำนวนเกล็ดที่ห่างมากกว่า จระเข้น้ำจืดหัวทู่สั้นกว่าจระเข้น้ำเค็ม มีเกล็ดท้ายท้อย 4 เกล็ดเรียงให้เห็นชัด เท้าหลังมีพังผืดเล็กน้อย หางจระเข้มีกำลังมากใช้โบกพัดไปมาช่วยในการว่ายน้ำ หรือเป็นอาวุธ สามารถฟาดหางทำให้คนหรือสัตว์ได้รับอันตรายได้ ปกติไม่ได้ใช้ขาในการว่ายน้ำ','007','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/44659800.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('027','งูเห่า','	งูเห่า เป็นงูบกขนาดกลาง มีหลายสี คือ ดำ น้ำตาล เขียวอมเทา เหลืองหม่น รวมทั้งสีขาว มีทั้งที่มีลายตามตัว และไม่มีลายเลย เป็นงูที่มีอันตราย นิสัยดุ ฉกกัด เมื่อเกิดอาการตกใจมักทำเสียงขู่ฟู่ๆ และเป็นงูที่มีพิษร้ายแรง มีร่องและรูทางออกของน้ำพิษทางด้านหลังของเขี้ยวพิษ เขี้ยวพิษขนาดไม่ใหญ่นักซึ่งผนึกติดแน่นกับขากรรไกรขยับไม่ได้ นอกจากเขี้ยวพิษแล้วอาจมีเขี้ยวสำรองอยู่ติด ๆ กันอีก 1 - 2 อัน ที่ขากรรไกรล่างไม่มีฟัน งูเห่าเมื่อโตเต็มวัย มีความยาวประมาณ 120-150 เซนติเมตร เมื่อเทียบตามส่วนแล้วงูเห่าสามารถแผ่แม่เบี้ยได้กว้างที่สุดกว่าชนิดอื่น ยกตัวชูคอแผ่แม่เบี้ยได้สูงที่สุดประมาณ 1 ใน 3 ของความยาวลำตัว เกล็ดบนหัวมีขนาดใหญ่','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/f45e2aed.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('028','งูหลาม','	เป็นงูที่มีขนาดใหญ่มาก ลำตัวอ้วนสั้น หางสั้นไม่ยาวเหมือนงูเหลือม สีและลายผิดกับงูเหลือม ลายที่หัวผิดกับงูเหลือมอย่างเห็นได้ชัด มีแถบสีขาวจากบริเวณริมท้ายทอยต่อจากลำตัวมาจรดกันที่ปลายจมูก มีลักษณะรูปหน้าจั่วลายศรที่หัวสีขาว','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/f9bfa0e5.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('030','งูจงอาง','เป็นงูพิษที่มีขนาดใหญ่ที่สุดในโลก หัวกลมทู่ใหญ่ แผ่แม่เบี้ยได้ ไม่มีลายดอกจันอย่างงูเห่า แต่ทำเสียงขู่คล้ายงูเห่า ลำตัวเรียวยาว เป็นงูสีน้ำตาลแดงอมเขียวเป็นส่วนมาก สีอื่นมีบ้าง ท้องของงูจงอางเหลืองเกือบขาว ใต้คอมักมีสีแดงหรือส้ม','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/26649ae4.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('031','งูเขียวหางไหม้','งูเขียวหางไหม้มีหลายชนิด หัวยาวมนใหญ่ คอเล็ก ตัวอ้วนสั้น ปลายหางมีสีแดงชัดเจน ลำตัวมีสีเขียวอมเหลืองสด บางตัวมีสีเขียวอมน้ำเงิน หางสีแดงสด บางตัวมีหางสีแดงคล้ำเกือบเป็นสีน้ำตาล เป็นงูพิษอ่อน เมื่อถูกกัดจะปวดมาก บวมอยู่หลายวัน แต่ไม่ถึงกับเสียชีวิต นอกจากว่ามีโรคแทรก','002','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/ec35aa09.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('032','ปลาบึก','จัดเป็นปลาน้ำจืดที่ไม่มีเกล็ดที่มี ขนาดใหญ่ ลำตัวมีความยาวเกือบ 3 เมตร และมีน้ำหนักมากกว่า 250 กิโลกรัม ลำตัวมีลักษณะยาวและแบนด้านข้าง ส่วนหัวค่อนข้างใหญ่ ตามีขนาดเล็ก ไม่มีฟัน มีหนวดสั้นๆ ที่ขากรรไกรบน 1 คู่ซ่อนอยู่ในร่องตรงเลยมุมปาก ในขณะมีชีวิตสีลำตัวจะเป็นสีเทาออกแดงทางด้านหลัง แล้วค่อยๆ กลายเป็นสีเทาแกมฟ้าทางด้านข้าง และสีขาวทางด้านใต้ท้อง มีจุดดำจุดหนึ่งทางด้านข้างตรงตำแหน่งปลายสุดของครีบหู และจุดดำอีกสามจุดบนครีบหาง ครีบทุกครีบเป็นสีเทาจางๆ','003','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/74d663c6.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('007','ลิงชิมแปนซี','เป็นลิงที่ไม่มีหาง คล้ายคนมาก แขนและขามีความยาวพอ ๆ กัน สมองเจริญมากทำให้เฉลียวฉลาดกว่าอุรังอุตังและกอริลล่า มีเชาว์ปัญญาเกือบเท่ามนุษย์ สามารถเดินตรงได้แต่นิ้วเท้าจะหันไปข้างนอก เวลาเดินตัวจะเอนไปข้างหน้า แขนตรง และวางข้อมือลงบนพื้น นานๆ ครั้งจะเดิน 2 เท้าแบบมนุษย์ ซึ่งในการเดินแบบนี้ ลิงชิมแปนซีจะเอามือไว้ข้างหลังเพื่อช่วยในการทรงตัว หรือชูมือทั้ง 2 ข้างขึ้นสูง ตัวผู้สูงราว 5 ฟุต ส่วนตัวเมียสูงราว 4 ฟุต เวลากินน้ำจะใช้ปากก้มลงดื่มโดยตรง ไม่ใช้มือจุ่มน้ำขึ้นมาเหมือนชะนี ว่ายน้ำไม่เป็น มีความจำดีมาก มีอารมณ์ความรู้สึกเช่นเดียวกับค','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/07.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('008','สิงโต','สิงโตแอฟริกา และสิงโตอินเดียไม่มีลักษณะที่แตกต่างกัน สิงโตไม่มีลายบนตัวอย่างเสือ ตัวผู้ที่โตเต็มที่จะมีขนยาวขึ้นรอบคอ ดูสง่าน่าเกรงขาม ตัวเมียไม่มีขนรอบคอ ตรงปลายหางมีขนขึ้นเป็นพู่','004','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/08.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('009','ยีราฟ','เป็นสัตว์บกที่สูงที่สุด มีคอยาวมาก ตัวผู้มีส่วนสูงประมาณ 18 ฟุต น้ำหนักประมาณ 1,100 - 1,932 กิโลกรัม ตัวเมียมีส่วนสูงประมาณ 17 ฟุต น้ำหนักประมาณ 700 - 1,182 กิโลกรัม มีเขาทั้งในตัวผู้และตัวเมีย ไม่ผลัดเขา เขามีขนปกคลุมอยู่ หนังมีขนสั้นสีน้ำตาล มีลายขาวแปลกตา ปากและลิ้นยาว ใช้ริมฝีปาก และลิ้นม้วนวนจับใบไม้ได้ มีเต้านม 4 เต้า','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/09.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('010','ม้าลาย','พบทั่วไปในทวีปแอฟริกาแถบที่ราบโล่งทางตอนใต้ของทะเลทรายซาฮาร่า','006','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/10.jpg');
Insert into ZOO.ANI_SPECIES (ANI_SPECIES_ID,ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) values ('034','โลมา','โลมา มีอวัยวะต่างๆทุกๆ ส่วนเหมือนกับสัตว์เลี้ยงลูกด้วยนมทั่วไป หากแต่ละส่วนของอวัยวะ จะปรับเปลี่ยนต่างไปจากสัตว์เลี้ยงลูกด้วยนมทั่วไป ดังนี้ จมูก โลมามีจมูกไว้หายใจ แต่จมูกนั้นต่างไปจากจมูกของสัตว์ อื่นๆ เพราะตั้งอยู่กลางกระหม่อมเลยทีเดียว เพื่อให้สะดวกต่อการเชิดหัวขึ้นหายใจเหนือน้ำ จากจมูกมีท่อหายใจต่อลงมาถึงปอดในตัว จึงไม่จำเป็นต้องให้น้ำผ่านเหงือกเข้าไปในปอดเพื่อช่วยหายใจเหมือนปลาทั่วไป หู หูของโลมานั้นเป็นเพียงแค่รูเล็กจิ๋วติดอยูด้านข้างของหัวเท่านั้น แต่หูของโลมามีประสิทธิภาพสูงมาก รับคลื่นเสียงใต้น้ำได้อย่างยอดเยี่ยม โดยเฉพาะกับภาษาที่โลมาสื่อสารกันด้วยเสียงที่มีคลื่นความถี่สูง การมองเห็น โลมามีดวงตาแจ่มใส เหมือนตาสัตว์เลี้ยงลูกด้วยนม มีเปลือกตาปิดได้ และในเวลา กลางคืนตาก็จะเป็นประกาย เหมือนตาแมว','005','http://i1018.photobucket.com/albums/af304/kwangplay/dbzoo/34.jpg');

---------------------------------------------------
--   END DATA FOR TABLE ANI_SPECIES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ZOO_EMPLOYEES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ZOO_EMPLOYEES
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a001','พีรัญญา','ภุชงครัตน์',to_timestamp('16-AUG-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-1234567','006',to_timestamp('12-MAR-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),50000,null);
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a002','สุนิสา','ฉายกระจ่าง',to_timestamp('23-JUL-91 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'088-5555555','005',to_timestamp('15-MAR-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),20000,'a001');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a003','กัญญพัชร์ ','องค์สิริวัฒนกุล',to_timestamp('01-NOV-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-8976589','002',to_timestamp('01-JUL-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),20000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a004','หทัยรัตน์','คุณรัชตะไพโรจน์',to_timestamp('03-NOV-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-1238754','001',to_timestamp('13-AUG-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a005','นันทิศา','บุญชุม',to_timestamp('25-AUG-91 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'081-4569873','001',to_timestamp('13-AUG-05 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a006','กัลยาณี','ช่วยประคอง',to_timestamp('30-JAN-89 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-5643245','003',to_timestamp('14-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a007','ชิม','ฝ้าย',to_timestamp('19-SEP-88 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-6794356','004',to_timestamp('15-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),16000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a008','ชิกกี้','ช็อก',to_timestamp('28-MAR-87 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-2356745','001',to_timestamp('20-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a009','ฟ้า','กนก',to_timestamp('12-NOV-89 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-6789876','002',to_timestamp('20-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a010','กี้','อู๋',to_timestamp('07-JUL-85 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-7658943','003',to_timestamp('24-JAN-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a011','แจค','กี้',to_timestamp('03-SEP-87 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'085-6789345','004',to_timestamp('25-FEB-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),16000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a012','โบ','ชนา',to_timestamp('05-OCT-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'081-4579834','003',to_timestamp('23-MAR-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a013','ตั๊ก','อะไรเรอ',to_timestamp('21-DEC-87 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-5673456','004',to_timestamp('01-APR-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),15000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a015','รุ่ง','รวี',to_timestamp('28-NOV-88 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'088-5679845','002',to_timestamp('25-APR-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),18000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a016','ออง','เงิบ',to_timestamp('10-MAY-90 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'089-2345987','003',to_timestamp('01-MAY-06 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),14000,'a005');
Insert into ZOO.ZOO_EMPLOYEES (EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID) values ('a017','อุ๋ม','อิ๋ม',to_timestamp('20-AUG-85 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),'087-4579123','004',to_timestamp('25-MAY-07 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),14000,'a005');

---------------------------------------------------
--   END DATA FOR TABLE ZOO_EMPLOYEES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ZOO_JOBS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZOO.ZOO_JOBS
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('005','ผู้จัดการ','ผู้จัดการแต่ละแผนก');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('006','ผู้บริหาร','บริหารสวนสัตว์');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('001','พนักงานตรวจสอบอาหาร','ตรวจสอบอาหารสัตว์,ให้อาหารสัตว์');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('002','สัตวแพทย์','ดูแลสุขภาพสัตว์,ตรวจรักษาโรคสัตว์');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('003','พนักงานทำความสะอาด','ทำความสะอาดที่อยู่อาศัยของสัตว์');
Insert into ZOO.ZOO_JOBS (JOB_ID,JOB_NAME,JOB_TITLE) values ('004','พนักงานจัดแสดงโชว์','ทำการจัดแสดงโชว์สัตว์');

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






