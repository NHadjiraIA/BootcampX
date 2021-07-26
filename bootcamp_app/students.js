const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
const queryString = `
  SELECT students.id as student_id, students.name as name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name LIKE $2
  LIMIT $1;
  `;
  
  // Store all potentially malicious values in an array.
  //const values = [`%${cohortName}%`, limit];
  const values = [limit, `%${cohortName}%`]
  console.log("this is the values for index 0",values[0]);
  
  pool
  .query(queryString, values)
.then(res => {
    
    console.log('this is the result',res.rows[0]);
}).catch(err => console.error('query error', err.stack));
// try {
//   const res = pool.query(queryString, values)
//   console.log('this is the rows of result at index 0',res.rows[0])
//   // { name: 'brianc', email: 'brian.m.carlson@gmail.com' }
// } catch (err) {
//   console.log('this is an error',err.stack)
// }