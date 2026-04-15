create database demobatch;

use demobatch;

create table student(
name varchar(20),
mail varchar(20),
mobile varchar(20)
);

insert into student(name,mail,mobile) values ('om','om@gmail.com','999786789');

-- use belowe command to show table values
select * from student; 

-- this command use for describe table scima
desc student;

-- to drop table below comand used
drop table student;

-- to show all tables use this
show tables;


