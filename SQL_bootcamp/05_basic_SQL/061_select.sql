/*
    SQL to find a spedific user.
    Joint the first_name, and last_name collumn and compare
*/
SELECT
*
FROM employees
-- Joint the first_name, and last_name collumn and compare
WHERE concat(first_name, ' ', last_name) = 'Mayumi Schueller';



/*
    SQL to find a spedific user.
    Joint the first_name, and last_name collumn and compare
*/
select
*
FROM employees
-- Filter on two columns
WHERE first_name = 'Mayumi'
AND last_name = 'Schueller';