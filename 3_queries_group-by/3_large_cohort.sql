SELECT cohorts.name AS cohort_name, COUNT(*) AS student_count
FROM cohorts
RIGHT JOIN students ON students.cohort_id = cohorts.id
WHERE cohorts.name IS NOT NULL
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY student_count ASC; 