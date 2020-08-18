SELECT COUNT(assistance_requests.*) AS total_requests, students.name AS student
FROM assistance_requests
LEFT JOIN students ON assistance_requests.student_id = students.id
WHERE students.name IN ('Elliot Dickinson')
GROUP BY students.name;