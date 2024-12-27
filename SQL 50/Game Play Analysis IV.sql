WITH tab AS (
    SELECT COUNT(DISTINCT player_id) FROM Activity
), tab2 AS (
    SELECT player_id, MIN(event_date) FROM Activity GROUP BY player_id
)

SELECT ROUND(COUNT(DISTINCT t.player_id) * 1.0 / (SELECT * FROM tab), 2) AS fraction
FROM tab2 AS t 
INNER JOIN Activity AS a ON a.player_id = t.player_id 
WHERE a.event_date > t.min AND a.event_date - t.min = 1 
