use demobatch;

show tables;

drop table student1;
drop table student2;
drop table student3;
drop table students;

set sql_safe_updates = 0; -- off

set sql_safe_updates = 1; -- on

create table students( 
student_id int auto_increment primary key,
Full_name varchar(100) not null,
email varchar(100) unique,
phone varchar(10) unique not null,
age int not null default 19 check ( age > 18 and age < 60),
status enum("Active","Pass","Suspended"),
gender enum("Male","Female","Other"),
check (phone is not null or char_length(phone) = 10)
);

INSERT INTO students
(full_name, email, phone, age, status, gender)
VALUES
('Rahul Sharma', 'rahul2@gmail.com', '9876543219', 25, 'Active', 'Male'),
('Amit Verma', 'amit@gmail.com', '9876543211', 30, 'Suspended', 'Male'),
('Priya Singh', 'priya2@gmail.com', '9876543217', 28, 'Active', 'Female'),
('Neha Gupta', 'neha@gmail.com', '9876543213', 22, 'Pass', 'Female'),
('Rohit Kumar', 'rohit@gmail.com', '9876543214', 35, 'Suspended', 'Male');

-- DELETE — Row Level Operation
--    -DELETE removes specific rows from table
--    -Can use WHERE
--    -Deletes selected rows
--    -Can be rolled back (InnoDB)
--    -AUTO_INCREMENT does NOT reset

select * from students;

-- DELETE Variants
-- DML
-- 1. Delete by Primary Key
-- -------------------------
delete from students where student_id =3;

-- 2. Delete by Status
-- --------------------
delete from students where status = 'Suspended'; 

-- 3. Delete by Email
-- ---------------------
delete from students where email='neha@gmail.com';

INSERT INTO students
(full_name, email, phone, age, status, gender)
VALUES
('Amit Verma kumar', 'amit123@gmail.com', '9825543211', 30, 'Suspended', 'Male');

-- 4. Delete by Phone
-- -------------------
delete from students where phone='9825543211';
select * from students;

-- 5. Delete by Age Condition
-- ----------------------------
delete from students where age >= 28;

INSERT INTO students
(full_name, email, phone, age, status, gender)
VALUES
('Amit Verma', 'amit@gmail.com', '9876543216', 30, 'Suspended', 'Male'),
('Priya Singh', 'priya@gmail.com', '9876543212', 28, 'Active', 'Female'),
('Rohit Kumar', 'rohit@gmail.com', '9876543214', 35, 'Suspended', 'Male');

-- 6. Delete Limited Rows
DELETE FROM students LIMIT 2;

-- 7. Delete Latest Row
-- ---------------------
delete from students order by student_id desc limit 1;

-- 8. Delete All Rows
-- ---------------------
delete from students;

select * from students;

INSERT INTO students
(full_name, email, phone, age, status, gender)
VALUES
('Amit Verma', 'amit@gmail.com', '9876543216', 30, 'Suspended', 'Male');

-- truncate 
-- delets the table and recreate it with same schema
-- resets the auto increment 
truncate table students;
INSERT INTO students
(full_name, email, phone, age)
VALUES
('Amit Verma', 'amit@gmail.com', '9876543216', 30);


