create table student3(
rno int,
name varchar(20),
marks int,
grade varchar(3),
city varchar(20));

insert into student3(rno,name,marks,grade,city)values(10,"anil",95,"A","turvihal"),
(11,"pani",90,"A","turvihal"),(12,"shek",85,"B","ron"),(13,"reddy",75,"B","ron"),
(14,"prabu",70,"C","turvihal"),(15,"chot",65,"C","gvt");

select * from student3;

select avg(marks) from student3;
select name from student3 where marks>(select avg(marks) from student3);

select rno from student3 where (rno%2=0);
select name from student3 where rno in(select rno from student3 where (rno%2=0));

select max(marks) from student3 where city="turvihal";

select * from student3 where city="turvihal";
select max(marks) from(select * from student3 where city="turvihal") as temp;

select(select max(marks)
from student3),name from student3;

create view view1 as select rno,name from student3;
select * from view1;

create view teacher as select marks,grade from student3;
select * from teacher;