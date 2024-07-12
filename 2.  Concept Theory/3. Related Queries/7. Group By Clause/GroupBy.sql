## GRoup By clause :-

    # Defination -

        Groups roes thay have the same values into summary rows.

        it collect data from multiple records and groups the result ny one or more column

        generally used group by with the same aggregation function

    #Ex

        count num of students in each city

        SELECT city,COUNT(name) FROM student GROUP BY city;