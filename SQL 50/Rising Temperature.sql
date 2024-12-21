WITH tab AS (
	SELECT *, 
		LAG(recorddate) OVER(ORDER BY recorddate) AS lg_date, 
		LAG(temperature) OVER(ORDER BY recorddate) AS lg 
	FROM Weather
)

SELECT id 
FROM tab 
WHERE temperature > lg AND lg_date + 1 = recorddate