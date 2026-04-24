-- null, default and check constraints

use demobatch;

show tables;

create table class(
name varchar (20) not null,
lastname  varchar(20),
age int
);

insert into class values ("omkar","thorat",27);

insert into class values ("ganesh","thorat",21);

insert into class values ("pritam","thorat",26);

select * from class;

insert into class(lastname,age) values ("thorat",26);-- if you are selected not null that's why this is not working

insert into class(name,age) values ("anant",26);