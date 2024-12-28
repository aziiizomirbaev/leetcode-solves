WITH tab AS (
    SELECT x, y, z,  
        CASE WHEN x + y > z THEN 1 ELSE 0 END AS c1,
        CASE WHEN x + z > y THEN 1 ELSE 0 END AS c2,
        CASE WHEN z + y > x THEN 1 ELSE 0 END AS c3
    FROM Triangle 
) 

SELECT x, y, z, CASE WHEN c1+c2+c3 = 3 THEN 'Yes' ELSE 'No' END AS triangle
FROM tab 