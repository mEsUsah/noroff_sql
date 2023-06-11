SELECT 
    prod_id,
    price,
    category,
    row_number() OVER(
        partition BY category
        OrDER BY price
    ) AS "category pos #"
FROM products