const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];
const limit = process.argv[3];
// console.log(cohort);
// console.log(limit);

pool.query(`
SELECT students.id AS student_id, students.name AS student_name, cohorts.name AS cohort_name
FROM students
LEFT JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${cohort}%'
LIMIT ${limit};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.student_name} has an id of ${user.student_id} and was in the ${user.cohort_name} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));

