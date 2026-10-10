-- SQL Dialect: MySQL
-- Server version: 9.6.0


CREATE DATABASE IF NOT EXISTS training_performance ;

USE training_performance;

CREATE TABLE courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL
);

CREATE TABLE assessments (
    assessment_id INT PRIMARY KEY,
    month VARCHAR(10) NOT NULL,
    course_id VARCHAR(10) NOT NULL,
    batch VARCHAR(20) NOT NULL,
    score DECIMAL(5,2) NOT NULL,
    attendance_pct DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO courses (course_id, course, department)
VALUES
('C1', 'Excel', 'Business'),
('C2', 'PowerBI', 'Business'),
('C3', 'SQL', 'Technology'),
('C4', 'Python', 'Technology');


INSERT INTO assessments
(assessment_id, month, course_id, batch, score, attendance_pct)
VALUES
(1, 'Jan', 'C1', 'Morning', 72, 90),
(2, 'Jan', 'C2', 'Evening', 45, 70),
(3, 'Jan', 'C3', 'Morning', 65, 85),
(4, 'Jan', 'C4', 'Weekend', 38, 60),
(5, 'Feb', 'C1', 'Evening', 90, 95),
(6, 'Feb', 'C2', 'Weekend', 55, 80),
(7, 'Feb', 'C3', 'Morning', 48, 75),
(8, 'Feb', 'C4', 'Evening', 66, 88),
(9, 'Mar', 'C1', 'Weekend', 90, 98),
(10, 'Mar', 'C2', 'Morning', 60, 82),
(11, 'Mar', 'C3', 'Evening', 75, 92),
(12, 'Mar', 'C4', 'Weekend', 42, 65);


Show tables;


SELECT * FROM assessments;

select * from courses;

