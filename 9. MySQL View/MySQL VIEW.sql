CREATE DATABASE cool;
USE cool;

CREATE TABLE st(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);


INSERT INTO st
(rollno, name, marks,grade,city)
VALUES
(101,"anit",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");


CREATE VIEW view1 AS
SELECT rollno,marks FROM st;

SELECT * FROM view1 WHERE marks>90;

DROP VIEW view1;

SELECT * FROM view1;