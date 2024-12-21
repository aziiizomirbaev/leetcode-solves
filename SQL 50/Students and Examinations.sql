WITH tab AS (
	SELECT s.student_id, s.student_name, ss.subject_name
	FROM Students AS s 
	CROSS JOIN Subjects AS ss 
)

SELECT tab.student_id, tab.student_name, tab.subject_name, COUNT(e.subject_name) AS attended_exams
FROM tab 
LEFT JOIN Examinations AS e USING(student_id, subject_name)
GROUP BY tab.student_id, tab.student_name, tab.subject_name 
ORDER BY tab.student_id, tab.subject_name 