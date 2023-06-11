select 
    prod_id,
    price,
    category,
    LAST_VALUE(price) OVER(
        PARTITION BY category
        ORDER BY price RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS max_price
FROM products


-- max
select 
    prod_id,
    price,
    category,
    max(price) OVER(
        PARTITION BY category
    ) AS max_price
FROM products