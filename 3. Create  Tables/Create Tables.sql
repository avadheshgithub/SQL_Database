CREATE DATABASE college;
USE college;

CREATE DATABASE colleges;
USE colleges;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1,"AVadhesh",19);
INSERT INTO student VALUES(2,"Amit",15);

SELECT * FROM student;

CREATE DATABASE IF NOT EXISTS colleges;
DROP DATABASE IF EXISTS company;

SHOW DATABASES;
SHOW TABLES;


CREATE TABLE stud (
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

select * FROM stud;

INSERT INTO stud
(rollno,name)
VALUES
(101,"Avadhesh"),
(102,"Rajesh"),
(103, "Amit");

INSERT INTO stud VALUES(104,"Dinesh");


CREATE TABLE temp1(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    
    PRIMARY KEY(id,name)
);

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000
);
INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;
