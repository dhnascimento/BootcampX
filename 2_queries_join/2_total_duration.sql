SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
LEFT JOIN students ON students.id = assignment_submissions.student_id
LEFT JOIN cohorts ON students.cohort_id = cohorts.id 
WHERE cohorts.name IN ('FEB12');