/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
SELECT e.hire_date, count(e.emp_no)
FROM employees as e
GROUP BY e.hire_date

/*
*  Show me all the employees, hired after 1991 and count the 
*  amount of positions they've had
*  Database: Employees
*/
SELECT 
    e.emp_no,
    concat( e.first_name, ' ', e.last_name) AS name,
    count(t.title) AS Departments
FROM employees as e
LEFT JOIN titles AS t using(emp_no) 
WHERE TO_CHAR(e.hire_date, 'yyyy') > '1991'
GROUP BY e.emp_no


/*
*  Show me all the employees that work in the department 
*  development and the from and to date.
*  Database: Employees
*/
SELECT 
    e.emp_no,
    CONCAT(e.first_name, ' ', e.last_name) AS "name",
    dept_emp.from_date,
    dept_emp.to_date
FROM employees as e
LEFT JOIN dept_emp using(emp_no)
LEFT JOIN departments as d USING(dept_no)
WHERE d.dept_name = 'Development'
ORDER BY "name"
