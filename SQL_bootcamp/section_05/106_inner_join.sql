/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), 
* New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT 
    orders.*,
    customers.state AS customerState
FROM orders
LEFT JOIN customers ON orders.customerid = customers.customerid
WHERE customers.state IN ('OH', 'NY', 'OR')
ORDER BY orders.orderid


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT 
    products.title AS Product,
    inventory.quan_in_stock AS inventory
FROM products
LEFT JOIN inventory ON products.prod_id = inventory.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT 
    concat(employees.first_name, ' ', employees.last_name) AS Name,
    departments.dept_name AS Department
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
