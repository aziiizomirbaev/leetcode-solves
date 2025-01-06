WITH tab AS (
	SELECT 
		d.name AS d_name, 
		e.name AS e_name, 
		e.salary, 
		DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS dr 
	FROM Employee AS e 
	INNER JOIN Department AS d ON e.departmentId = d.id 
)

SELECT 
	d_name AS "Department", 
	e_name AS "Employee", 
	salary AS "Salary"
FROM tab 
WHERE dr <= 3 
