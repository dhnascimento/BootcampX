SELECT AVG(total_duration)
FROM (SELECT cohorts.name AS cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM assistance_requests
RIGHT JOIN students ON student_id = students.id
RIGHT JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration) AS avg_query;