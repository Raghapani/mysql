use xyz;
create table student1(
rno int primary key,
name varchar(20),
marks int,
grade varchar(5),
city varchar(30));

insert into student1(rno,name,marks,grade,city) values(10,"pani",80,"b","turvihal"),
(11,"shekya",90,"a","ron"),
(12,"prabu",70,"c","turvihal"),(13,"chota",60,"d","somnal");
insert into student1(rno,name,marks,grade,city)values(14,"anil",95,"a","turvihal"),
(15,"reddy",55,"D","ron");
select * from student1;
select distinct city from students;

#where
select * from student1 where marks>75;
select * from student1 where city="turvihal";
select * from student1 where marks>75 and city="turvihal";
select * from student1 where marks>75 or city="turvihal";
select * from student1 where marks between 70 and 90;
select * from student1 where city in("turvihal","ron","somnal");
select * from student1 where city not in("turvihal","ron");

#limit
select * from student1 limit 3;
select * from student1 where marks >75 limit 2;

#order by
select * from student1 order by marks asc;
select * from student1 order by city asc;
select * from student1 order by marks asc limit 3;


select * from student1 order by marks desc;
select * from student1 order by grade desc;
select * from student1 order by marks desc limit 3;

#agregate functions
select count(name) from student1;
select max(marks) from student1;
select min(marks) from student1;
select sum(marks) from student1;
select avg(marks) from student1;

#group by
select city from student1 group by city;
select city,count(name) from student1 group by city;
select city,avg(marks) from student1 group by city;
select city,avg(marks) from student1 group by city order by avg(marks) asc;
select city,avg(marks) from student1 group by city order by city asc;
select city,avg(marks) from student1 group by city order by avg(marks) desc;
select city,avg(marks) from student1 group by city order by city desc;
select grade,count(name) from student1 group by grade order by grade;
select city,max(marks) from student1 group by city;

#having
select  city,max(marks) from student1   group by city having max(marks)>90;
select city,count(name) from student1 group by city having count(name)>=2 ;