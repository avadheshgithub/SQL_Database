CREATE DATABASE stuInfo;
USE stuInfo;

CREATE TABLE studd(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);


INSERT INTO studd
(rollno, name, marks,grade,city)
VALUES
(101,"anit",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

ALTER TABLE studd
CHANGE name full_name VARCHAR(20);

SELECT * FROM studd;

DELETE FROM studd
WHERE marks<80;

ALTER TABLE studd
DROP COLUMN grade;