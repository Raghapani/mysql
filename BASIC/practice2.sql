CREATE DATABASE COLLEGE;
USE COLLEGE;
CREATE TABLE STUDENT(
 ID INT primary key,
 NAME varchar(20),
 AGE INT not null
);
insert INTO STUDENT values(10,"PANI",23);
insert INTO STUDENT values(11,"SHEKYA",23);

select * from student;
CREATE DATABASE IF NOT exists COLLEGE;
DROP DATABASE IF EXISTS TALIDU;

SHOW databases; 

show tables;
select * from STUDENT;
insert into STUDENT(NAME,AGE,ID) values("CHANDRA",30,13);
insert into STUDENT values(14,"REDDY",60),(15,"UDAY",16);