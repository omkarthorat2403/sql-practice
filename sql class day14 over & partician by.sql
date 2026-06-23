use demobatch;
show tables;
select * from class;

select * from students;

-- assign row number according to the age
-- -----------------------------------------------------
select student_id,student_name ,row_number() over(order by age desc) from students;

select * from (select student_id,student_name ,row_number() over(order by age desc) from students ) temptable where age = 22;

--  ----------------------------------------------------------------------

CREATE TABLE employee (
firstname varchar(20),
lastname varchar(20),
age int,
salary int,
location varchar(20)
);

select * from employee;
INSERT INTO employee VALUES ('sachin','sharma', 28, 10000, 'bangalore' ) ;

INSERT INTO employee VALUES ('shane','warne', 30, 20000, 'bangalore' );

INSERT INTO employee VALUES ('rohit','sharma', 32, 30000, 'hyderabad' ) ;

INSERT INTO employee VALUES ('shikhar','dhawan', 32, 25000, 'hyderabad');

INSERT INTO employee VALUES ('rahul','dravid', 31, 20000, 'bangalore');

INSERT INTO employee VALUES ('saurabh','ganguly', 32, 15000, 'pune');

INSERT INTO employee VALUES ('kapil','dev',34, 10000, 'pune');

-- how many people are from each location and avg salary at each location like bangalore, 3, 16666
select location, count(location), avg(salary) from employee group by location;

-- 'rahul','dravid bangalore, 3, 16666
-- 'sachin','sharma'bangalore, 3, 16666

-- select firstname, lastname, location, count(location), avg(salary) from employee group by location;  -- error

select firstname, lastname, employee.location, total, avg_sal from employee 
join
(select location, count(location) as total, avg(salary) as avg_sal from employee group by location) temptable
on 
employee.location = temptable.location;


-- over and partition by 
select firstname, lastname, location, 
count(location)  over (partition by location) as total, 
avg(salary) over (partition by location) as avg_sal
from employee;

select firstname, lastname, location, 
count(location)  over (partition by location) as total, salary
from employee;

select firstname , lastname , count(location)  as total,salary from employee group by salary; --  error