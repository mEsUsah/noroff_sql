/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate 
* date functions
*/
SELECT * 
FROM employees
WHERE AGE(birth_date) > '60 years'

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
SELECT 
    COUNT(*)
FROM employees
WHERE EXTRACT (MONTH FROM birth_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/
SELECT 
    COUNT(*)
FROM employees
WHERE EXTRACT (MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/
SELECT 
    MAX(AGE(birth_date))
FROM employees

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
SELECT 
    count(*)
FROM orders
WHERE TO_CHAR(orderdate, 'yyyy-mm') = '2004-01'