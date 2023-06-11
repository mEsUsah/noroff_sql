/*
*  Calculate the total amount of employees per department and 
*  the total using grouping sets
*
*  Database: Employees
*  Table: Employees
*/
SELECT
        dept_emp.dept_no,
        count(employees.first_name)
FROM dept_emp
LEFT JOIN employees USING(emp_no)
 
GROUP BY
    GROUPING SETS(
        (dept_emp.dept_no)
    )

/*
*  Calculate the total average salary per department and the 
*  total using grouping sets
*  Database: Employees
*  Table: Employees
*/
