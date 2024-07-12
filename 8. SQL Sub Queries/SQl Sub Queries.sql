CREATE DATABASE col;
USE col;

CREATE TABLE studnt(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);


INSERT INTO studnt
(rollno, name, marks,grade,city)
VALUES
(101,"anit",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM studnt;

SELECT name,marks FROM studnt WHERE marks> (SELECT AVG(marks) FROM studnt);

SELECT name,rollno FROM studnt WHERE rollno IN  (SELECT rollno FROM studnt WHERE rollno % 2 = 0);

SELECT MAX(marks) FROM(SELECT *FROM studnt WHERE city = "Delhi")as temp;
SELECT MAX(marks) FROM studnt WHERE city = "Delhi";
SELECT (SELECT MAX(marks) FROM studnt),name FROM studnt;