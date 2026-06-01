use demobatch;
show tables;
show databases;
select * from students;
select * from students where age = 22;
select full_name , location from students where age > 22;

-- alter queery
select * from students;
desc students;
-- make coloumn not null
alter table students modify age int not null;

-- drop coloumn 
alter table students drop address;
alter table students drop city;

-- change coloumn name
alter table students rename column full_name to student_name;

-- set or change default  value 
alter table students alter gender set default 'female';






