CREATE DATABASE coll;
USE coll;

CREATE TABLE stud(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);


INSERT INTO stud
(rollno, name, marks,grade,city)
VALUES
(101,"anit",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");


select * FROM stud ;
SELECT DISTINCT city FROM stud;
SELECT name,marks FROM stud;


SELECT * FROM stud WHERE city="Mumbai";
SELECT name,city FROM stud WHERE grade = "A";
SELECT * FROM stud WHERE marks>80;
SELECT * FROM stud WHERE marks>80 AND city= "Mumbai";
SELECT * FROM stud WHERE marks>80 OR city= "Mumbai";


SELECT * FROM stud WHERE marks+10>100;
SELECT * FROM stud WHERE marks=93;
SELECT * FROM stud WHERE marks BETWEEN 80 AND 100;
SELECT * FROM stud WHERE city IN ("Delhi","Mumbai");
SELECT * FROM stud WHERE city NOT IN ("Delhi","Mumbai");


SELECT * FROM stud LIMIT 3;
SELECT * FROM stud WHERE marks>75 LIMIT 3;


SELECT * FROM stud ORDER BY city ASC;
SELECT * FROM stud ORDER BY marks DESC LIMIT 3;
SELECT * FROM stud ORDER BY city DESC;


SELECT MAX(marks) FROM stud;
SELECT AVG(marks) FROM stud;
SELECT MIN(marks) FROM stud;
SELECT SUM(marks) FROM stud;
SELECT COUNT(name) FROM stud;

SELECT city FROM stud GROUP BY city;
SELECT city,COUNT(name) FROM stud GROUP BY city;
SELECT city,AVG(marks) FROM stud GROUP BY city;
SELECT city, name ,COUNT(rollno) FROM stud GROUP BY city,name;


SELECT city,AVG(marks) FROM stud GROUP BY city ORDER BY AVG(marks);
SELECT city,AVG(marks) FROM stud GROUP BY city ORDER BY city;
SELECT grade ,COUNT(rollno) FROM stud GROUP BY grade ORDER BY grade;


SELECT COUNT(name),city FROM stud GROUP BY city HAVING MAX(marks)>90;


SELECT city FROM stud WHERE grade = "A" GROUP BY city HAVING MAX(marks)>=93 ORDER BY city DESC;


SET SQL_SAFE_UPDATES = 0;
SELECT * FROM stud;


UPDATE stud SET grade="O" WHERE grade="A";
UPDATE stud SET marks = 12 WHERE rollno = 105;
UPDATE stud SET grade = "B" WHERE marks>80 AND marks<90;
UPDATE stud SET grade = "C" WHERE marks BETWEEN 70 AND 80;
UPDATE stud SET marks = marks+1;


DELETE FROM stud WHERE marks<33;
DELETE FROM stud;


CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept  
VALUES
(101,"English"),
(102,"IT");
SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
	ON DELETE CASCADE
);

INSERT INTO teacher 
VALUES
(101,"Avadhesh",101),
(102,"Amit",102);
SELECT * FROM teacher;


UPDATE dept SET id = 103 WHERE id=102;
SELECT * FROM dept;
SELECT * FROM teacher;

DELETE FROM dept WHERE id = 101;
SELECT * FROM dept;
SELECT * FROM teacher;



SELECT * FROM stud;

ALTER TABLE stud
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE stud
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE stud
CHANGE age stud_age INT;

INSERT INTO stud
(rollno,name,marks,stud_age)
VALUES
(107,"Gargi",68,100);

ALTER TABLE stud
DROP COLUMN stud_age ;

ALTER TABLE stud
RENAME TO studentt;

SELECT * FROM studentt;


TRUNCATE TABLE studentt;