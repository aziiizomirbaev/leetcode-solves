-- Write your PostgreSQL query statement below
SELECT COALESCE(MAX(num), NULL) AS num
FROM MyNumbers 
WHERE num IN (
    SELECT num  
    FROM MyNumbers 
    GROUP BY num 
    HAVING COUNT(num) = 1
)