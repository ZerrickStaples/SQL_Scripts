CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE students (
student_id int NOT NULL AUTO_INCREMENT,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
age int NOT NULL,
PRIMARY KEY (student_id)
);

CREATE TABLE classes (
class_id int NOT NULL AUTO_INCREMENT,
subject varchar(50) NOT NULL,
description varchar(50) NOT NULL,
level int NOT NULL,
PRIMARY KEY (class_id)
);

CREATE TABLE enrollment(
enrollment_id int NOT NULL AUTO_INCREMENT,
student_id int,
class_id int,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (class_id) REFERENCES classes(class_id),
PRIMARY KEY (enrollment_id)
);

INSERT INTO students (first_name, last_name, age) VALUES('John', 'Smith', 17), ('Jamaal', 'X', 16), ('Nina', 'Serafina', 19);
INSERT INTO classes (subject, description, level) VALUES('Math', 'Calculus', 1000),('Math', 'Calculus', 2000);
INSERT INTO classes (subject, description, level) VALUES('Math', 'Trigonometry', 1000);
INSERT INTO enrollment(student_id, class_id) VALUES (1, 1), (2, 2), (3, 3), (2, 3), (1, 2), (3, 1);

SELECT students.first_name, students.last_name, classes.description, classes.level FROM ((students INNER JOIN enrollment ON enrollment.student_id = students.student_id) INNER JOIN classes ON classes.class_id = enrollment.class_id);