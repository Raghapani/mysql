USE COLLEGE;
#WITHOUT PASSING COLUMN NAMES
#FOR SINGLE OR SMALL TABLES THIS TYPE IS PREFERED
insert INTO student values(1,"PANI",23);
insert INTO student values(12,"SHEKYA",24);
#OR
INSERT into student values(22,"SHASHA",10),(25,"VRUSHAB",40);


#WITH COLUMN NAMES
#FOR MULTIPLE OR BIG TABLES THIS TYPE IS PREFERED
insert INTO student(ID,NAME,AGE) values(5,"DARSHA",70);
insert INTO student(ID,NAME,AGE) values(6,"SCAM",80);
#OR
insert INTO student(ID,NAME,AGE) values(7,"DARSHA",70),(19,"SYCH",14);

#BY USING COLUMNS U CAN CHANGE THE ORDER OF INSERTION
insert INTO student(NAME,AGE,ID) values("CHOTA",45,30);

select  * FROM STUDENT;
select distinct name from student;
