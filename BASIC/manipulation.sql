#update
set sql_safe_updates=0;
update student1 set grade="o" where grade="a";
select * from student1;
update student1 set marks=65 where rno=13;
update student1 set marks=marks+1 ;

#delete
delete from student1 where marks<70;

#alter
#add column
alter table student1 add column age int not null default 18 ;

#modify column(change datatype and constrraint) 
alter table student1 modify age varchar(10) not null;

#change column(rename)
alter table student1 change age st_age int not null;

#drop column
alter table student1 drop column st_age;

#rename(to rename table)
alter table student1 rename to student2;
select * from student2;

#truncate
truncate table student2;

insert into student2(rno,name,marks,grade,city) values(10,"pani",80,"b","turvihal"),
(11,"shekya",90,"a","ron"),
(12,"prabu",70,"c","turvihal"),(13,"chota",60,"d","somnal");
insert into student2(rno,name,marks,grade,city)values(14,"anil",95,"a","turvihal"),
(15,"reddy",55,"D","ron");

#pqs
alter table student2 change name full_name varchar(20);
delete from student2 where marks<80;
alter table student2 drop column grade;
