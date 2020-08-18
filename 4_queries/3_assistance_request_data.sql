SELECT teachers.name AS teachers, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
LEFT JOIN students ON student_id = students.id
LEFT JOIN teachers ON teacher_id = teachers.id
LEFT JOIN assignments ON assignment_id = assignments.id
ORDER BY duration ASC;