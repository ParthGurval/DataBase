create database practice

use practice

create table student_info(
roll_no int primary key,
full_name varchar(50) not null,
division varchar(50) not null,
marks int not null
);

select * from student_info


insert into student_info (
roll_no,
full_name,
division,
marks
) values(20, 'Parth', 'A+', 95),(30, 'Rounak', 'A', 89),(40, 'Pravin', 'B+', 80)

insert into student_info (
roll_no,
full_name,
division,
marks
) values (50, 'Satyajit','A', 82), (60, 'Vijay', 'B+', 84)

insert into student_info (
roll_no,
full_name,
division,
marks
) values (70, 'Vijay','A', 59), (80, 'Vijay', 'B+', 86), (81, 'Sitaram','A', 82), (82, 'Parn', 'B+', 84), (83, 'VijayVikram','A', 82), (84, 'Roshan', 'B+', 84)

select count (roll_no) as RollNUM from student_info 

select * from student_info

select max(marks) as Max_marks from student_info

select min(marks) as Min_marks from student_info

select sum(marks) as total_marks from student_info

select  avg(marks) as total_avg from student_info

select * from student_info where marks between 85 and 95

select top 2 * from student_info

select * from student_info



update student_info set marks = 90 where roll_no = 30

update student_info set marks = 
	case when roll_no = 40 then 88
	when roll_no = 50 then 79
	when roll_no = 60 then 80
	end
	where roll_no in (40,50,60);


	update student_info set division = 
	case when roll_no = 10 then 'A+'
	when roll_no = 50 then 'A'
	when roll_no = 60 then 'B+'
	end
	where roll_no in (10,50,60);

	select * from student_info

  select roll_no , full_name, marks from student_info SD1 where 1-1 = (select count(distinct marks) from student_info SD2 where SD2.marks > SD1.marks)


 select * from student_info where marks > 
	( select min (marks) from student_info )
 

 select * from student_info


 SELECT  * from student_info order by full_name DESC,  marks asc;