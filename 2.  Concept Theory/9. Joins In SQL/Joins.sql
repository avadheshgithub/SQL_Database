## Joins in SQL :

    # Defination :  
        
        join is used to combine rows from two or more tables , based on related column between them


## TYPE of Joins

    1. Inner Join (a⁀b)

        Return record that have matching values in both tables

        Synatx -

            SELECT column(s)
            FROM tableA
            INNER JOIN tableB
            ON tableA.col_name = tableB.col_name


    2. Left Join (a-b) 

        Return all records from the left table and matched records from the right table
        
        Syntax :-

            SELECT column(s)
            FROM tableA
            LEFT JOIN tableB
            ON tableA.col_name = tableB.col_name


    3. Right Join (b-a)

            Return all records from the Right table and matched records from the Left table
        
        Syntax :-

            SELECT column(s)
            FROM tableA
            RIGHT JOIN tableB
            ON tableA.col_name = tableB.col_name


    4. Full Join (a‿b)

            Return all records when there is a match in either left or right table

        Synatx :-

            SELECT * FROM student as a
            LEFT JOIN course as b
            ON a.id = b.id
            UNION
            SELECT *FROM student as a
            RIGHT JOIN course as b
            ON a.id = b.id;



    5. Left Exclusive Join (A-a⁀b)

            Return all records of left table Except common records of A and b

        Synatx :

            SELECt* FROM students as a 
            LEFT JOIN course as b 
            ON a.id = b.id 
            WHERE b.id IS NULL



    5. Right Exclusive Join (B-a⁀b)

            Return all records of right table Except common records of A and b

        Synatx :

            SELECt* FROM students as a 
            RIGHT JOIN course as b 
            ON a.id = b.id 
            WHERE a.id IS NULL



    6. Self Join 

            it is a regular join but the table is joined with itself

        Synatx:-

            SELECT column(s)
            FROM table as a 
            JOIN table as b 
            ON a.col_name = b.col_name;


    7. Union 

            it is used to combine the result set of two or mote SELECT statements
 
            - it gives UNIQUE records


            to USe it :-

                1. every SELECT should vae same num of columns
                2. columns must have similar data types 
                3. columnd on every SELECT sould be in same order

        Syntax :

            SELECT column(s) FROM tableA
            UNION
            SELECT column(s) FROM tableB

    7. Union ALL

            it is used to combine the result set of two or mote SELECT statements
 
            - it gives Duplicates records


            to USe it :-

                1. every SELECT should vae same num of columns
                2. columns must have similar data types 
                3. columnd on every SELECT sould be in same order

        Syntax :

            SELECT column(s) FROM tableA
            UNION ALL
            SELECT column(s) FROM tableB





