create database JoinUse;

use JoinUse;

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
subject VARCHAR(50)
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

