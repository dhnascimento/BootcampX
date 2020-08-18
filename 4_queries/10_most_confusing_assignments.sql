SELECT assistance_requests.assignment_id AS id, assignments.name AS name, assignments.day AS "day" , assignments.chapter AS  chapter, COUNT(assistance_requests.*) AS total_requests
FROM assistance_requests
JOIN assignments ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.name, assistance_requests.assignment_id, assignments.day, assignments.chapter
ORDER BY total_requests DESC;