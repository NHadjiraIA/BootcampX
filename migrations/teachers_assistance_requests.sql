drop TABLE teachers, assistance_requests CASCADE;
CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) not NULL,
  start_date Date,
  end_date Date,
  is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,  
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
   teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
   created_at timestamp , 
   started_at timestamp ,
   completed_at timestamp,
   student_feedback TEXT,
   teacher_feedback TEXT
);

