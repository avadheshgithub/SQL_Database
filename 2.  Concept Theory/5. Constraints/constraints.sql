## Constraints :-

        - Are used to specify rules for data in a table

    
    # 1. NOT NULL  :-

        column can not have null values;

        Ex - col1 int NOT NULL

    # 2. UNIQUE :-

        all values in column are different

        Ex - col2 int UNIQUE

    # 3. Primary KEy :-

        make a column unique & not null but used only for one

        Ex - id int PRIMARY KEY

    # 4. DEFAULT

        sets the default value of a column

        salary INT DEFAULT 25000;

    # 5. CHECK

        - it can limit the values allowerd in a column

        CREATE TABLE city(
            id INT PRIMARY KEY,
            city VARHCAR(50),
            age INT,
            CONSTRAINTS age_check CHECK(age>= 18 AND city = "delhi")
        );

        CREATE TABLE newtab (
            age INT CHECK(age>=18)
        );
        

    