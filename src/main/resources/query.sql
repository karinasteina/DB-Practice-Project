PRAGMA foreign_keys = ON;

-- Select all courses.
   SELECT * FROM courses;

-- Select all students.
   SELECT * FROM students;

-- Select students older than 20.
   SELECT * FROM students WHERE age > 20;

-- Show student names together with course names.
   SELECT student_name, course_name FROM students
   INNER JOIN courses
   ON students.course_id = courses.course_id;

-- Count how many students are in each course.
   SELECT count(*) as "COUNT PER COURSE", courses.course_name FROM students
   INNER JOIN courses
   ON students.course_id = courses.course_id
   GROUP BY students.course_id;

-- Update the first students age.
    UPDATE students
    SET age = 21
    WHERE student_id = 1;

-- Check the update.
   SELECT * FROM students;

-- Move second student to a different course.
   UPDATE students
   SET course_id = 2
   WHERE student_id = 2;

-- Check the update using JOIN.
   SELECT student_name, course_name FROM students
   INNER JOIN courses
   ON students.course_id = courses.course_id;

-- Delete one student.
   DELETE FROM students
   WHERE student_id = 1;

-- Check the final result.
   SELECT * FROM students;