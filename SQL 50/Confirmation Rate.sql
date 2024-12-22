SELECT 
	s.user_id, 
	ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmed_rate
FROM Signups AS s 
LEFT JOIN Confirmations AS c USING(user_id)
GROUP BY s.user_id 