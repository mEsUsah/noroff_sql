/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/
SELECT
    DISTINCT continent,
    sum(population) OVER(
        partition BY continent
    ) AS population
FROM country

/*
*  To the previous query add on the ability to calculate the percentage 
*  of the world population.
*  What that means is that you will divide the population of that 
*  continent by the total population and multiply by 100 to get a 
*  percentage.
*  Make sure you convert the population numbers to float 
*  using `population::float` otherwise you may see zero pop up.
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/
SELECT
    DISTINCT continent,
    sum(population) OVER(
        partition BY continent
    ) AS population,
    sum(population) OVER(
    ) AS world_pop,
    (
        sum(population) OVER(
            partition BY continent
        )::float 
        
        /
        
        sum(population) OVER(
        )::FLOAT 
        
        * 100
    ) as percentage
FROM country


/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/
SELECT 
    DISTINCT regions.name AS "region",
    count(towns.id) OVER(
       partition BY regions.id
    ) AS "# towns"
FROM regions
JOIN departments ON regions.code = departments.region 
JOIN towns ON departments.code = towns.department
ORDER BY regions.name