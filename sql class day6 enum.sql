use demobatch;

show tables;

--  1 . ENUM Constraint
-- -----------------
-- It restricts a column to predefined values only.
-- “Only allow values from this list.”

show create table students;

create table student1(
fullName varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18 ,
status ENUM('active', 'passout','suspended'),
gender ENUM('male','female','other'),
check (age >= 18 and age <=60),
check (char_length(phone) =10)
);

insert into student1(fullName,email_id,phone, age,status,gender)
values("amit tyagi" , "amit@gmail.com", 1234567891, 45,'active',"female");

select * from student1;  

insert into student1(fullName,email_id,phone, age,status)
values("pravin jadhav" , "pravin123@gmail.com", 1234543212, 35,'active'); -- gender not define so he will geting null

insert into student1(fullName,email_id,phone, age)
values("raj jadhav" , "raj23@gmail.com", 9875457634, 25);  -- status not define so he will geting null

--  2 . ENUM Constraint

create table student2(
fullName varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18 ,
status ENUM('active', 'passout','suspended') default 'passout',
gender ENUM('male','female','other') default 'other',
check (age >= 18 and age <=60),
check (char_length(phone) =10)
);

insert into student2(fullName,email_id,phone, age)
values("ram jadhav" , "ram23@gmail.com", 7241457634, 25); -- status and gender not define so he will geting default values

select * from student2;

insert into student2(fullName,email_id,phone, age,status,gender)
values("amit tyagi" , "amit@gmail.com", 1234567891, 45,'active',"female"); -- status and gender define so he will geting defined values