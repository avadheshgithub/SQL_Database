CREATE DATABASE colle;
USE colle;

CREATE TABLE students(
	id INT PRIMARY KEY,
    name VARCHAR(50)

);

INSERT INTO students(id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);


INSERT INTO course(id,course)
VALUES
(101,"english"),
(105,"math"),
(103,"sicence"),
(107,"computer science");


SELECT *FROM students;
SELECT *FROM course;


SELECT * FROM students as s
INNER JOIN course as c
ON s.id = c.id;


SELECT * FROM students as s
LEFT JOIN course as c
ON s.id = c.id;


SELECT * FROM students as s
RiGHT JOIN course as c
ON s.id = c.id;


SELECT * FROM students as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT * FROM students as s
RiGHT JOIN course as c
ON s.id = c.id;


SELECt* FROM students as a 
LEFT JOIN course as b 
ON a.id = b.id 
WHERE b.id IS NULL;

SELECt* FROM students as a 
RIGHT JOIN course as b 
ON a.id = b.id 
WHERE a.id IS NULL;


SELECT *
FROM students as a 
JOIN students as b 
ON a.id = b.id;


SELECT id FROM students 
UNION
SELECT id FROM course 