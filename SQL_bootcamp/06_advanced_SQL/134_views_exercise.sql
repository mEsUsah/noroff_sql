/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/
CREATE VIEW "90-95" AS
SELECT
    *
FROM employees
WHERE EXTRACT(year from hire_date) BETWEEN 1990 and 1995

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

CREATE VIEW max_salaries AS
SELECT
    emp_no,
    max(salary)
FROM salaries
GROUP BY emp_no;


CREATE VIEW bigbucks AS
SELECT 
    * 
from max_salaries
    WHERE max > 80000;