create table student4(
id int ,
name varchar(10));

create table course(
id int,
course varchar(10));

insert into student4(id,name)values(10,"pani"),(11,"shek"),(12,"reddy"),(13,"chot");
insert into student4(st_id,name)values(12,"reddy"),(13,"chot");
insert into course(id,course)values(10,"java"),(11,"sql"),(12,"market"),(13,"python");
insert into course(c_id,course)values(13,"js");
delete from course where c_id in(12,13);
select * from student4;
select * from course;
alter table student4 change column id st_id int;
alter table course change column id c_id int;

#inner join
select * from student4 inner join course on student4.st_id=course.c_id;

#alias
select * from student4 as s inner join course as c on s.st_id=c.c_id;

#outer join
#left join
select * from student4 as s left join course as c on s.st_id=c.c_id;

#right join
select * from student4 as s right join course as c on s.st_id=c.c_id;

#full join
select * from student4 as s left join course as c on s.st_id=c.c_id 
union
select * from student4 as s right join course as c on s.st_id=c.c_id;

#left exclusive join
select * from student4 as s left join course as c on s.st_id=c.c_id 
where c.c_id is null;

#right exclusive join
select * from student4 as s right join course as c on s.st_id=c.c_id 
where s.st_id is null;

select * from student4 as s left join course as c on s.st_id=c.c_id 
where c.c_id is null
union
select * from student4 as s right join course as c on s.st_id=c.c_id 
where s.st_id is null;

#self join
create table employee1(
id int primary key,
name varchar(20),
manage_id int);

insert into employee1(id,name,manage_id) values(101,"adam",103),(102,"bob",104),
(103,"casey",null),(104,"donald",103);
select * from employee1;

select * from employee1 as a join employee1 as b on a.id=b.manage_id;
select * from employee1 as b join employee1 as a on a.id=b.manage_id;

select b.id,b.name,a.id as manger_id,a.name as manage_name from employee1 as a join 
employee1 as b on a.id=b.manage_id;