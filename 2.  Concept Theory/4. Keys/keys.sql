## KEY :-

    # Defination :-
        
       - IT uniquickly identify each element

    
    # Type :-




1. Primary key :- 

            - it is column (set of columns)in a table that uniquely identifies each row 

            - there is only 1 primary key

            - it not should be null & it should be unique





2. Foreign Key :-

            - a foreign key is a column (set of columns) in atvle that refer to the primary key that can be multiple fk.

            - fk can have duplicate & null values
    

            # Syntax :-

                CREATE TABLE temp(
                    cust_id int;
                    FOREIGN KEY (cust_id) REFERENCE customer (id);
                )

            # Program :-
                CREATE TABLE dept(
                    id INT PRIMARY KEY,
                    name VARCHAR(50)
                );

                CREATE TABLE teacher(
                    id INT PRIMARY KEY,
                    name VARCHAR(50),
                    dept_id INT,
                    FOREIGN KEY(dept_id) REFERENCES dept(id)
                );


    1. Cascading For FK (FOREIGN KEY)

            - if changes done in one table , then changes will be also in another table


        1. On Delete Cascading 

            - When we create a foreign key using this option , it delete the referencing rows the referencing rows in the child table. when the references row is deleted in th parent table whoch has primary key

            CREATE TABLE studnet(
                id INT PRIMARY KEY,
                courseId INT,
                FOREIGN KEY (courseId) REFERENCES course(id),
                ON DELETE CASCADE
                ON UPDATE CASCADE
            )



        2. On Update Cascading

            - when we create a foreign key using the update cascade the referencing rows are updated in the child table ehn the referenced row is updated in the prarent table whicj has primary key.




