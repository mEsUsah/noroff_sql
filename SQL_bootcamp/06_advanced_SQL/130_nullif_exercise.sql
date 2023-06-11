/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/
SELECT 
    special,
    nullif(special, 0) AS "not_special"
FROM products