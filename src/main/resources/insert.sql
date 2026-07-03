PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

-- Insert 3 courses.
    INSERT into courses (course_id, course_name, credits)
    values (1, 'Mathematics', 2),
    (2, 'English', 4),
    (3, 'Java', 6);

-- Insert 5 students.
    INSERT into students (student_id, student_name, email, age, course_id)
    values (1, 'Bob', 'bob@gmail.com', 20, 1),
           (2, 'Anton', 'anton@gmail.com', 23, 1),
           (3, 'Andrew', 'andrew@gmail.com', 18, 2),
           (4, 'Janis', 'janis@gmail.com', 45, 3),
           (5, 'Bella', 'bella@gmail.com', 19, 3);
