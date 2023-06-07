/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
SELECT 
    *
FROM 
    customers
WHERE (age < 30 or age >= 50) 
AND income > 50000
AND (country = 'Japan' or country = 'Australia')

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

SELECT 
    sum(netamount)
FROM 
    orders
WHERE (orderdate >= '2004-06-01' AND orderdate < '2004-07-01')
AND netamount > 100