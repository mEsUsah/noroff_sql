/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 
* 7888, 1082, 12808, 9623
*/
SELECT count(*) 
FROM orders
WHERE customerid in (7888, 1082, 12808, 9623)


/*
* DB: World
* Table: city
* Question: How many cities are in the district of 
* Zuid-Holland, Noord-Brabant and Utrecht?
*/
SELECT count(*) 
FROM city
WHERE district in ('Zuid-Holland', 'Noord-Brabant', 'Utrecht')