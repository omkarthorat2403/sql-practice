use demobatch;
show tables;

-- IMP Point
-- CRUD Operation
-- create - insert statement
-- read/retrive - select statements
-- update - update statements
-- delete - delete statements


create table student(
name varchar(20),
mail varchar(20),
mobile varchar(20)
);
-- varchar (limit),int

select * from student;
-- use insert statements
-- 1. simple insert 

insert into student(name,mail,mobile) values ('om','om@gmail.com','999786789');
insert into student(name,mail,mobile) values ('raj','raj123@gmail.com','7874219800');

-- 1.insert without coloumn name(order matters)
insert into student values ('ganesh','ganesh2003@gmail.com','776539800');
insert into student values ('prem','prem22@gmail.com','790839800');

-- 1.insert with multiple rows(bulk insert)
insert into student values
('rajesh','raju22@gmail.com','98657833390'),
('anant','anant1996@gmail.com','860531248'),
('rajesh','raju22@gmail.com','98657833390');

-- 1.insert into selected coloumn
insert into student(name,mobile) values
('arati','909783330');

select * from student;
