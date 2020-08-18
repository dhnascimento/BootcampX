SELECT COUNT(assistance_requests.*) AS total_assistances, teachers.name AS teacher
FROM assistance_requests
LEFT JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name IN ('Waylon Boehm')
GROUP BY teachers.name;