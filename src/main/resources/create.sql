PRAGMA foreign_keys = ON;

-- Drop students first because students depends on courses.
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- Create the courses table.
    CREATE TABLE IF NOT EXISTS courses(
        course_id integer primary key,
        course_name TEXT not null,
        credits integer check (credits > 0)
    );


-- Create the students table.
    CREATE TABLE IF NOT EXISTS students(
        student_id integer primary key,
        student_name text not null,
        email text not null unique,
        age integer check (age >= 18),
        course_id integer not null references courses(course_id)
    );
