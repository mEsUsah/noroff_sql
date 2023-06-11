select 
    prod_id,
    price,
    category,
    FIRST_VALUE(price) OVER(
        PARTITION BY category
        ORDER BY price RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS min_price
FROM products

--min
select 
    prod_id,
    price,
    category,
    min(price) OVER(
        PARTITION BY category
    ) AS min_price
FROM products