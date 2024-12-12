use  xyz;
create table temp2(
id int,
name varchar(30),
salary int,
primary key(id,name));

create table temp3(
cust_id int,foreign key(cust_id)references temp2(id));

create table temp4(
id int,
name varchar(20),
salary int default 25000);

insert into temp4(id,name)values(10,"pani");

select * from temp4;
