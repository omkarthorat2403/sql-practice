use demobatch;

show tables;

-- check constraints

drop table students;

create table students(
fullName varchar(20) not null,
email_id varchar(20),
phone varchar(10),
age int not null default 18,
check (age between 18 and 60)
);

insert into students 
(fullName,email_id,phone, age)
values
("rohit sharma" , "rohit@gmail.com", 123456, 18);

select * from students;

insert into students (fullName,email_id,phone, age) values
("kapil sharma" , "kapil@gmail.com", 123456, 45);

insert into students (fullName,email_id,phone, age) values
("kapil sharma" , "kapil@gmail.com", 123456, 15); -- error due to age is not fit to given check.

insert into students (fullName,email_id,phone) values
("kapil sharma" , "kapil@gmail.com", 123456); -- age is not given but he will getting default value.

create table class(
fullName varchar(20) not null,
email_id varchar(20),
phone varchar(20),
age int not null default 18,
check (age >= 18 and age <= 60),
check (char_length(phone)=10)
);

select * from class;

insert into class (fullName,email_id,phone) values
("kapil sharma" , "kapil@gmail.com", 123456); -- error due phone number lenght not match

insert into class (fullName,email_id,phone) values
("kapil sharma" , "kapil@gmail.com", 1234567891);  -- age by default get 18

insert into class (fullName,email_id,phone,age) values
("rohit sharma" , "rohit45@gmail.com", 1234564321,25); 
