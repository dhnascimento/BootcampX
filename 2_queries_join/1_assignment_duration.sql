SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
WHERE assignment_submissions.student_id IN (
  SELECT students.id
  FROM students
  WHERE students.name IN ('Ibrahim Schimmel')
  );