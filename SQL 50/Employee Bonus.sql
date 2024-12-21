SELECT e.name, b.bonus
FROM Employees AS e 
LEFT JOIN Bonus AS b USING(empId)
WHERE b.bonus < 1000 OR b.bonus IS NULL;