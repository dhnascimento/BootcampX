SELECT students.name, cohorts.name, students.start_date AS student_start_date, cohorts.start_date AS cohort_start_date
FROM students
LEFT JOIN cohorts ON cohorts.id = students.cohort_id
WHERE students.start_date <> cohorts.start_date;
