create database mobile_prepaid;
use mobile_prepaid;

create table CUSTOMER(
PHONE_NUMBER VARCHAR(10) NOT NULL,
CUSTOMER_NAME VARCHAR(20),
EMAIL_ID VARCHAR(35),
ADDRESS VARCHAR(50),
PRIMARY KEY(PHONE_NUMBER));

create table PLAN(
PLAN_AMOUNT INT(6) NOT NULL,
VALIDITY_INDAYS INT(4),
LOCAL_VOICE_INMINS_PERDAY_SN INT(3),
LOCAL_VOICE_INMINS_PERDAY_ON INT(3),
STD_VOICE_INMINS_PERDAY_SN INT(3),
STD_VOICE_INMINS_PERDAY_ON INT(3),
DATA_INGB_PERDAY DOUBLE(3,1),
SMS_PERDAY INT(3),
PLAN_TYPE VARCHAR(10),
PRIMARY KEY (PLAN_AMOUNT));

create table SUBSCRIPTION(
PHONE_NUMBER VARCHAR(10),
PLAN_AMOUNT INT(6),
RECHARGE_DATE DATE,
EXPIRY_DATE DATE,
FOREIGN KEY(PHONE_NUMBER) REFERENCES CUSTOMER(PHONE_NUMBER);
FOREIGN KEY(PLAN_AMOUNT) REFERENCES PLAN(PLAN_AMOUNT);
