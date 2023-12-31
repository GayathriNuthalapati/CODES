create database hello;
use hello;
create table student(id int, fname varchar(50), lname varchar(50), dept varchar(50));
select * from student;
insert into student values(1, "Gayathri", "Nuthalapati", "CSE");
insert into student values(2, "Ramya", "Tadepalli", "EEE");
insert into student values(3, "Kranthi", "Pulugu", "ECE");
insert into student values(4, "Priya", "Nalam", "CIVIL");
insert into student values(5, "Nikhitha", "Kondaveeti", "MECH");
select * from student where lname="Nalam";
select * from student where id >=1;
select * from student order by dept;
select * from student order by id;
select * from student order by id desc;
select count(fname) from student;
delete from student where fname="Priya";
delete from student;
create table studentmarks(id int not null primary key, phy int, che int, maths int);
insert into studentmarks values(1, 98, 77, 67);
insert into studentmarks values(2, 44, 55, 78);
insert into studentmarks values(3, 89, 77, 98);
insert into studentmarks values(4, 44, 56, 78);
insert into studentmarks values(5, 44, 67, 23);
select * from studentmarks;
create table studentrankings(id int, ranks int, foreign key (id) references studentmarks(id));
insert into studentrankings values(1, 1);
insert into studentrankings values(2, 3);
insert into studentrankings values(3, 7);
insert into studentrankings values(4, 4);
insert into studentrankings values(5, 2);
select * from studentrankings;
delete from studentrankings;
drop table student;
truncate table student;
create table studentremarks(id int unique, fname varchar(50), lname varchar(50), remarks varchar(50));
insert into studentremarks values(1, "Gayathri", "Nuthalapati", "Good");
insert into studentremarks values(2, "Ramya", "Tadepalli", "Better");
insert into studentremarks values(3, "Kranthi", "Pulugu", "Excellent");
insert into studentremarks values(4, "Priya", "Nalam", "Great");
insert into studentremarks values(5, "Nikhitha", "Kondaveeti", "Nice");
select * from studentremarks;
call UPDATE_AND_SELECT( 1, "GAYATHRI", "NUTHALAPATI");

