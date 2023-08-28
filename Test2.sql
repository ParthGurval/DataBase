

CREATE DATABASE Student;

use Student;

create table Student(

	roll_Num INT PRIMARY KEY,
	fname varchar(20) not null,
	email_id varchar(20) not null,
	mobile_num varchar(20) not null, 
	city varchar(20),
	dateOfBirth DATE,
	Grades INT
);

INSERT INTO Student(roll_Num, fname, email_id, mobile_num, city, dateOfBirth, Grades) Values(1, 'Kiran', 'kiran@gmail.com', '95462463215', 'Bidar', '2000-05-12', '8'),
(4, 'Dipak', 'Dipak@gmail.com', '946758643', 'Pune', '1995-12-12', '7'),
(10, 'Pravin', 'Pravin@gmail.com', '9467286434', 'Mumbai', '1999-6-7', '9'),
(15, 'Vijay', 'Vijay@gmail.com', '21417437326', 'Satara', '1998-8-10', '6'),
(18, 'Rohan', 'Rohan@gmail.com', '9556871557', 'Karad', '1990-12-01', '7'),
(43, 'Swapnil', 'Swapnil@gmail.com', '9687757272', 'Thane', '2003-02-05', '8'),
(45, 'Ronak', 'Ronak@gmail.com', '952752242', 'Ratnagiri', '2008-4-12', '10');


select * FROM Student;


Select * from Student Where Grades > 7;

select * from Student WHERE Grades = 10;


select * FROM Student Order By fname DESC;

UPDATE Student SET city = 'Kolhapur' WHERE roll_Num = 4;

Delete From Student WHERE dateOfBirth= '1998-8-10';

/*Alter Table Students drop column city = 'Satara'  Where fname = 'Vijay';*/

UPDATE Student SET city=NULL Where roll_Num=15;

drop table Student;