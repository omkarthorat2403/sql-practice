use demobatch;

-- ----------------------------------------------------------

-- case 
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;
show tables;

create table courses(
course_id int primary key auto_increment,
course_name varchar(50) not null,
course_duration_months int not null,
course_fee int not null
);

INSERT INTO courses (course_id, course_name, course_duration_months, course_fee) VALUES
(1, 'Full Stack Development', 6, 45000),
(2, 'Data Science', 8, 60000),
(3, 'Automation Testing', 6, 25000),
(4, 'Gen AI', 6, 30000),
(5, 'Agentic AI', 8, 50000);

select * from students;
select * from courses;

-- if course duration is > 6 masters course , else diploma course 
select course_id, course_name, course_duration_months,
case 
when course_duration_months > 6 then "masters course"
else "diploma course"
end as course_type
from courses;

create table student (
full_name varchar(20),
 phone int,
 dob varchar(20),
 gender varchar(20),
 student_email varchar(20),
 selected_course varchar(20),
 enrollment_date date,
 years_of_exp int,
 student_company varchar(20),
 batch_date datetime,
 source_of_joining varchar(20) default "Pune" ,
 location varchar(20));

drop table student;

INSERT INTO student
(full_name, phone, dob, gender, student_email, selected_course,
 enrollment_date, years_of_exp, student_company,
source_of_joining, location)
VALUES
('amit kumar','88271179','1982-09-03','m','amit3@bcci.com',4,'2024-08-02',28,'walmart','Referral','Mumbai'),
('ravi kumar gupta','98814767','1982-10-13','m','ravikumar@bcci.com',1,'2024-06-19',26,'flipcart','instagram','madras');

select * from student;
update student set 
student_company = 'microsoft'
where full_name = 'Mithali Raj2';

update student set 
student_company = 'microsoft'
where full_name = 'Jhulan Goswami2';

--  people working for walmart, flipkart, microsoft we want to say product based and all others service based.
select  full_name, student_company,
case 
when student_company in("walmart", "flipkart", "microsoft") then "product base"
else "service base"
end as company_type
from student;

select  full_name, student_company,
case 
when student_company in("walmart") then "Normal Base"
else "service base"
end as company_type
from student;

INSERT INTO student
(full_name, phone, dob, gender, student_email, selected_course,
 enrollment_date, years_of_exp, student_company,
source_of_joining, location)
VALUES
('Mithali Raj2','910003211','1982-12-03','F','mithali3@bcci.com',2,'2024-07-01',23,null,'Referral','Hyderabad'),
('Jhulan Goswami2','910005511','1982-11-25','F','jhulan3@bcci.com',3,'2024-07-15',20,null,'Referral','West Bengal');

-- mutiple conditions
select  full_name, student_company,
case
when student_company in("walmart", "flipkart", "microsoft") then "product base"
when student_company is null then "not applicable"
else "service base"
end as company_type
from student;

-- update with case 

update courses 
set 
course_duration_months = case 
when course_name = "Gen AI" then 10
when course_name = "Agentic AI" then 10
else course_duration_months
end ,
course_fee = case 
when course_name = "Gen AI" then 45000
when course_name = "Agentic AI" then 65000
else course_fee
end
where course_name in ("Gen AI","Agentic AI");


