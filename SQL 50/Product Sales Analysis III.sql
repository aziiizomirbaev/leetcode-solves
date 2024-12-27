-- Write your PostgreSQL query statement below
WITH tab AS (
    SELECT product_id, MIN(year) AS year
    FROM sales 
    GROUP BY product_id     
) 

SELECT t.product_id, t.year AS first_year, s.quantity, s.price
FROM Sales AS s 
INNER JOIN tab AS t USING(product_id, year)