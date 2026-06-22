use demobatch;
show tables;

select * from students;
select * from student;
-- composite key
drop table student;
create table student(
student_id int ,
course_id int,
enrolmentdate varchar(20),
primary key (student_id,course_id)
);

insert into student values(1,101,"1-1-2026");
insert into student values(1,102,"10-10-2026");
insert into student values(2,102,"10-10-2026");
insert into student values(2,101,"10-10-2026");
insert into student(enrolmentdate) values("10-10-2026");
insert into student values(2,101,"15-01-2026");

select * from student;
-- 1,101
-- 1,102
-- 2,101
-- 2,102

create table student2(
student_id int auto_increment,
coursename varchar(20) default "GenAi",
enrollmentdate varchar(20),
primary key(student_id,coursename)
);

select * from student2;

insert into student2 (enrollmentdate) values ("10-10-2026");

insert into student2 (coursename,enrollmentdate) values ("Testing","10-10-2026");

insert into student2 (student_id,coursename,enrollmentdate) values (5,"Python","12-11-2026");
-- -----------------------------------------------------------------------------------------------------
-- unique key
drop table student2;
create table student2(
student_id int,
courseid int,
enrollmentdate varchar(10),
unique(student_id,courseid)
);

insert into student2 values(1,101,"1-1-2026");
insert into student2(courseid,enrollmentdate) values(102,"10-10-2026");
insert into student2 values(2,102,"10-10-2026");
insert into student2 values(2,101,"10-10-2026");
insert into student2(enrollmentdate) values("11-10-2026");
insert into student2(courseid,enrollmentdate) values(101,"15-09-2026");
select * from student2;

-- ---------------------------------------------------------------------

-- primary key we can contain combination of studentid & courseid is unique not duplicate aalowed
-- unique means unique value allowed
-- 
