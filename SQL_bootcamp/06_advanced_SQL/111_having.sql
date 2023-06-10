/*
*  Show me all the employees, hired after 1991, that have 
*  had more than 2 titles
*  Database: Employees
*/
SELECT
    CONCAT(employees.first_name),
    COUNT(titles.title)
FROM employees
LEFT JOIN titles USING(emp_no)
    WHERE EXTRACT(YEAR FROM employees.hire_date) > 1991
GROUP BY employees.emp_no
    HAVING COUNT(titles.title) > 2


/*
*  Show me all the employees that have had more than 15 salary 
*  changes that work in the department development
*  Database: Employees
*/
SELECT
    CONCAT(employees.first_name, ' ', employees.last_name) AS name,
    count(salaries.salary) AS raises,
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
    CONCAT(employees.first_name, ' ', employees.last_name) AS name,
    count(departments.dept_name) AS departments

FROM employees
LEFT JOIN dept_emp Using(emp_no)
LEFT JOIN departments USING(dept_no)
GROUP BY employees.emp_no
    HAVING count(departments.dept_name) > 1