SELECT euni.unique_id, e.name 
FROM Employees AS e 
LEFT JOIN EmployeeUNI AS euni USING(id)
