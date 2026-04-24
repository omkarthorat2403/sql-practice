-- KEY CONSTRAINTS PRIMARY KEY, UNIQUE KEY , COMPOSIT PRIMARY AND UNOQUE KEY
-- ---------------------------------------------------------------------------
-- AUTO INCREMENT CONSTRAINTS
-- ---------------------------
-- PRIMARY KEY
-- -----------

-- create database , table, inserts , drop, desc
-- check , enum , default,not null

create table student3(
student_id int,
fullName varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18 ,
check (age >= 18 and age <=60),
check (char_length(phone) =10),
primary key(student_id)
);

insert into student3 (student_id,fullName, email_id, phone, age)
values(1,"omkar thorat" , "omkar123@gmail.com", 9881476153, 27);

select * from student3;

insert into student3(student_id, fullName, email_id, phone, age)
values(2,"pravin thorat" , "pravin123@gmail.com", 1234567891, 45); 

insert into students 
(student_id, fullName, email_id, phone, age)
values
(2,"amit tyagi" , "amit@gmail.com", 1234567891, 45);

insert into student3(student_id, fullName, email_id, phone, age)
values(null,"amit tyagi" , "amit@gmail.com", 1234567891, 45); -- error due student id primary key so null not allow

insert into student3(fullName, email_id, phone, age)
values("raj tyagi" , "raj@gmail.com", 1234567891, 45); -- error due id cannot mention

insert into student3 
(student_id, fullName, email_id, phone, age)
values(59,"anant thorat" , "anant27@gmail.com", 8605319383, 32);

select * from student3;

-- auto increment key

create table student4(
student_id int primary key auto_increment,
fullName varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18 ,
check (age >= 18 and age <=60),
check (char_length(phone) =10)
);

insert into student4(student_id, fullName, email_id, phone, age)
values(1,"omkar thorat", "omkar1@gmail.com", 9876543212, 27);

select * from student4;

insert into student4(fullName, email_id, phone, age)
values("ganesh thorat", "ganesh1@gmail.com", 9705508085, 22); -- student id not given so will get auto increment this

insert into student4(student_id,fullName, email_id, phone, age)
values(2,"arati thorat", "arati1@gmail.com", 9822480321,18); -- duplicate entry for student id cannot geting

