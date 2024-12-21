SELECT e1.name
FROM Employee AS e1 
LEFT JOIN Employee AS e2 ON e1.id = e2.managerId 
GROUP BY e1.id, e1.name 
HAVING COUNT(*) >= 5 