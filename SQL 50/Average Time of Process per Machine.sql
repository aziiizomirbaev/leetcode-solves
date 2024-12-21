SELECT 
	st.machine_id,
	ROUND(AVG(CAST(en.timestamp - st.timestamp AS DECIMAL)), 3) AS processing_time
FROM Activity AS st
INNER JOIN Activity AS en USING(machine_id, process_id)
WHERE st.activity_type = 'start' AND en.activity_type = 'end'
GROUP BY 1 