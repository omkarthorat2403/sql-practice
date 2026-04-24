-- Topic insert data one table to another table 

use demobatch;

show tables;

show create table class; 
-- CREATE TABLE `class` (
-- `name` varchar(20) NOT NULL,
 --   `lastname` varchar(20) DEFAULT NULL,
 --   `age` int DEFAULT NULL
--  ) ;

create table students(
fullname varchar(20),
lastname varchar(20),
mobile varchar(30)
);

drop table students;

select * from student;

insert into students(fullname , mobile)
select name , mobile from student;  -- insert data from student to students table.

select * from students;

