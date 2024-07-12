## Having Clause

    # DEFination :

        Similar to where i.e. apllies condition on rows.

        used when we want to apply any condition after grouping

    
    # Ex

        - COunt num of students in each city where max marks cross 90

        SELECT COUNT(name),city FROM student GROUP BY city
        HAVING MAX(marks)>90;