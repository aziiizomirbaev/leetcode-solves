-- Write your PostgreSQL query statement below
SELECT query_name, 
    ROUND(AVG(rating * 1.0/ position), 2) AS quality,
    ROUND(COUNT(rating) FILTER(WHERE rating < 3) * 100.00 / COUNT(rating), 2) AS poor_query_percentage
FROM Queries 
GROUP BY query_name 