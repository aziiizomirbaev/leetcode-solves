SELECT contest_id, ROUND(COUNT(user_id) * 100.00 / (SELECT COUNT(*) FROM Users), 2) AS percentage 
FROM Register AS r 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id  