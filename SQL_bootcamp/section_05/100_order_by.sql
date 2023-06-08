/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT 
    *
FROM employees
ORDER BY first_name ASC, last_name DESC


/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT 
    *
FROM employees
ORDER BY age(birth_date)

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
SELECT 
    *
FROM employees
WHERE first_name Ilike 'k%'
ORDER BY hire_date