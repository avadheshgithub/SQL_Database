
## Table Related Queries :-

    # 1 Create Table :-

        CREATE TABLE table_name(
            column_name1 datatype constraints

            columns_name2 datatype constaints
        );


    # 2 DROP Table

        DROP DATABASE table_name


    # 3 Show Table
    
        SELECT * FROM table_name;

    # 4 Insert

        INSERT INTO table_name
        (col1name,colname2)
        VAlUES
        (col1_v1 , col2_v2),
        (col1_v2 , col2_v2);

    # 5 Update

        update(to update existing rows)

        UPDATE table_name
        SET col1 = val1,col2=val2
        WHERE condition

        UPDATE table_name
        SET grade = "0"
        WHERE grade = "A";


    # 6 Delete

        - Delete (to delete Existing rows)


        DELETE FROM table_name
        WHERE condition;


        DELETE FROM student
        WHERE marks<33;

        DELETE FROM student // TAble data Deleted


    # 7 Alter 

        - alter(to change the schema)

        1. ALTER column

            ALTER TABLE table_name
            ADD COLUMN column_name datatype constraints;

        2. DROP column  

            ALTER TABLE table_name
            DROP COLUMN column_name;

        3. RENAME table

            ALTER TABLE table_name
            RENAME TO new_table_name;


        4. CHANGE column    
            
            ALTER TABLE table_name
            CHANGE COLUMN old_name new_name new_datatype new_constaints


        5. MODIFY column (modify datatype/Constraints)

            ALTER TABLE table_name
            modify col_name new_datatpe new_constaints

        
    # 8 truncate

        - truncate(it delete table  only , not table)
        - DROP (it delete the table also)

        TRUNCATE TABLE table_name;

