-- How many female customers do we have FROM the state of Oregon (OR)?
SELECT 
    count(*)
FROM 
    customers
WHERE gender = 'F' and state = 'OR'

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
SELECT 
    count(*)
FROM 
    customers
WHERE age > 44 and income >= 100000

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
SELECT 
    count(*)
FROM 
    customers
WHERE age >= 30 and age <= 50 and income < 50000

-- What is the average income between the ages of 20 and 50? 
-- (Excluding 20 and 50)
SELECT 
    avg(income)
FROM 
    customers
WHERE age > 20 AND age < 50