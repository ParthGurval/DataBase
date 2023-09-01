CREATE DATABASE multiTable;

use multiTable;

CREATE TABLE Students (
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
grade VARCHAR(10)
);

CREATE TABLE Teachers (
teacher_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
Teacher_subject VARCHAR(50)
);

CREATE TABLE Courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100),
teacher_id INT,
FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Enrollments (
enrollment_id INT PRIMARY KEY,
student_id INT,
course_id INT,
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


-- Insert values into Students table
INSERT INTO Students (student_id, first_name, last_name, age, grade)
VALUES
    (1, 'Steave', 'Smith', 18, '12th'),
    (2, 'Joss', 'Buttler', 17, '11th'),
    (3, 'Michael', 'Santnor', 16, '10th'),
    (4, 'Emily', 'Brown', 18, '12th'),
    (5, 'FAF', 'DuPlacis', 17, '11th'),
	(6, 'Thisara', 'Parera', 17, '11th'),
	(7, 'MS', 'Dhoni', 17, '11th'),
	(8, 'Virat', 'Kolhi', 17, '11th'),
	(9, 'Brandum', 'Maccumlm', 17, '11th'),
	(10, 'Rohit', 'Sharma', 17, '11th');

-- Insert values into Teachers table
INSERT INTO Teachers (teacher_id, first_name, last_name, Teacher_subject)
VALUES
    (10, 'Sarthak', 'Farakte', 'Math'),
    (20, 'Divya', 'Tawade', 'Science'),
    (30, 'Prathamesh', 'Halake', 'History'),
    (40, 'Rajlaxmi', 'Patil', 'English'),
    (50, 'Rohit', 'Halake', 'Computer Science'),
	(60, 'Swati', 'Awate', 'Environment');

-- Insert values into Courses table
INSERT INTO Courses (course_id, course_name, teacher_id)
VALUES
    (1, 'Algebra', 10),
    (2, 'Biology', 20),
    (3, 'World History', 30),
    (4, 'English Literature', 40),
    (5, 'Introduction to Programming', 50),
	(6, 'Golbal Enviroment', 60);

-- Insert values into Enrollments table
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES
    (1, 1, 1),
    (2, 1, 3),
    (3, 2, 2),
    (4, 3, 3),
    (5, 9, 4),
	(6, 10, 6),
	(7, 6, 3),
	(8, 8, 2),
	(9, 7, 1),
	(10, 7, 4);


SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

/*
Drop table Students;
Drop table Teachers;
Drop table Courses;
Drop table Enrollments;
*/


-- Inner Join
SELECT Students.student_id, Students.first_name, Students.last_name, Courses.course_name
FROM Students
INNER JOIN Enrollments ON Students.student_id = Enrollments.student_id
INNER JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- Left Join
SELECT Students.student_id, Students.first_name, Students.last_name, Courses.course_name
FROM Students
LEFT JOIN Enrollments ON Students.student_id = Enrollments.student_id
LEFT JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- Right Join
SELECT Students.student_id, Students.first_name, Students.last_name, Courses.course_name
FROM Students
RIGHT JOIN Enrollments ON Students.student_id = Enrollments.student_id
RIGHT JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- Full Outer Join
SELECT Students.student_id, Students.first_name, Students.last_name, Courses.course_name
FROM Students
FULL OUTER JOIN Enrollments ON Students.student_id = Enrollments.student_id
FULL OUTER JOIN Courses ON Enrollments.course_id = Courses.course_id;