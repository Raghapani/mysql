use xyz;
create table temp5(
city varchar(20),
age int check(age>=18),
name varchar(30));

insert into temp5(city,age,name)values("turvihal",23,"pani");#here we will get error if given age less than 

create table temp6(
city varchar(20),
age int,
name varchar(30),
constraint chk_age check(age>=18 and city="turvihal"));

insert into temp6(city,age,name)values("turvihal",23,"pani");