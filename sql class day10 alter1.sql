use demobatch;

show tables;
set sql_safe_updates =0;  -- off 
set sql_safe_updates=1;    -- on
-- ALTER command DDL
-- -----------------
-- Alter is to alter the structure of the table.

-- -- add
-- -- modify
-- -- drop
-- -- alter
-- -----------------
show tables;
select * from  students;
drop table students;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE NOT NULL,
    age INT NOT NULL DEFAULT 19 CHECK (age > 18 AND age < 60),
    status ENUM('Active', 'Passout', 'Suspended') DEFAULT 'Active',
    gender ENUM('Male', 'Female', 'Other'),
    CHECK (phone IS NULL OR CHAR_LENGTH(phone) = 10)
);
-- Sample Data for Practice
-- ---------------------------

INSERT INTO students                                  
(full_name, email, phone, age, status, gender)
VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543219', 25, 'Active', 'Male'),
('Amit Verma', 'amit@gmail.com', '9876543211', 30, 'Suspended', 'Male'),
('Priya Singh', 'priya@gmail.com', '9876543217', 28, 'Active', 'Female'),
('Neha Gupta', 'neha@gmail.com', '9876543213', 22, 'Passout', 'Female'),
('Rohit Kumar', 'rohit@gmail.com', '9876543214', 35, 'Suspended', 'Male');

truncate table students;
-- ------------------------------------------------------------------------------------------------
desc students; -- to show all schema of table
select * from students;
-- 1. ADD Add new column
alter table students add address varchar(200);

update students set address ="xyz,pune";

alter table students drop address;
alter table students add address varchar(200) not null default 'xyz,pune';
-- 2. Add column with NOT NULL
alter table students add city varchar(50) not null;

-- 2. Add column with NOT NULL and default
alter table students add location varchar(50) not null default "pune";

-- 3. Add column at specific position
alter table students add admission_date varchar(15) default "01-01-2026" after full_name;