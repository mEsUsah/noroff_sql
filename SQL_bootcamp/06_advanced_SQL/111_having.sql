/*
*  Show me all the employees, hired after 1991, that have 
*  had more than 2 titles
*  Database: Employees
*/
SELECT
    CONCAT(employees.first_name),
    COUNT(titles.title)
FROM employees
left JOIN titles USING(emp_no)
GROUP BY employees.emp_no
    HAVING COUNT(titles.title) > 2


/*
*  Show me all the employees that have had more than 15 salary 
*  changes that work in the department development
*  Database: Employees
*/
SELECT
    CONCAT(employees.first_name, ' ', employees.last_name) AS NAME,
    count(salaries.salary),
    departments.dept_name

FROM employees
LEFT JOIN salaries USING(emp_no)
LEFT JOIN dept_emp Using(emp_no)
LEFT JOIN departments USING(dept_no)
WHERE dept_name = 'Development'
GROUP BY employees.emp_no, departments.dept_no
    HAVING count(salaries.salary) > 15  


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT
    CONCAT(employees.first_name, ' ', employees.last_name) AS NAME,
    count(departments.dept_name)

FROM employees
LEFT JOIN dept_emp Using(emp_no)
LEFT JOIN departments USING(dept_no)
GROUP BY employees.emp_no
    HAVING count(departments.dept_name) > 1