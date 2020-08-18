SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time 
FROM assistance_requests
RIGHT JOIN students ON student_id = students.id
RIGHT JOIN cohorts ON cohorts.id =  students.cohort_id
GROUP BY cohorts.name
HAVING AVG(completed_at - started_at) IS NOT NULL
ORDER BY average_assistance_time DESC
LIMIT 1;