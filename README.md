# Student Database Practice Project

This project is a simple Maven + SQLite project for practicing basic database functionality.

You will work with two tables:

1. `courses`
2. `students`

The `students` table has a foreign key that connects each student to a course.

```text
students.course_id → courses.course_id
```

This means every student must belong to an existing course.

---

## Project Structure

Your project should look like this:

```text
student-db-test/
│
├── pom.xml
├── README.md
│
├── student.db
│
└── src/
    └── main/
        ├── java/
        │   └── com/
        │       └── example/
        │           └── DatabaseDemo.java
        │
        └── resources/
            ├── create.sql
            ├── insert.sql
            └── query.sql
```

The file `student.db` is the SQLite database file. It is created automatically when the Java program runs.

---

## Files You Will Use

### `create.sql`

This file creates the database tables.

---

### `insert.sql`

This file inserts data into the tables.

---

### `query.sql`

This file is used to practice database queries.

---

## How to Run the Project

Run the program by right-clicking on DatabaseDemo class and choosing: `Run DatabaseDemo.main()`

The program will run these files in order:

```text
create.sql
insert.sql
query.sql
```

The output will be printed in the terminal.

---

## Student Tasks

### Part 1: `create.sql` - DONE

Complete the table creation.

Checklist:

* Create a `courses` table. - DONE
* Create a `students` table. - DONE
* Add a 'primary key' to both tables. - DONE
* Add a 'foreign key' from `students.course_id` to `courses.course_id`. - DONE
* Make student 'name' required. - DONE
* Make student 'email' required and unique. - DONE
* Make student 'age' 18 or older. - DONE
* Make course 'name' required. - DONE
* Make course 'credits' greater than 0. - DONE

---

### Part 2: `insert.sql`

Insert data into the tables. - DONE

Checklist:

* Insert course data first. - DONE
* Insert 3 courses. - DONE
* Insert 5 students. - DONE
  * Make sure all students are at least 18 years old. - DONE
  * Make sure all emails are unique. - DONE
  * Make sure every student uses a valid course ID. - DONE

---

### Part 3: `query.sql` - DONE

Practice SQL queries.

Checklist:

* Select all courses. - DONE
* Select all students. - DONE
* Select students older than 20. - DONE
* Show students with their course names using `JOIN`. - DONE
* Count students in each course. - DONE
* Update one student's age. - DONE
* Update one student's course. - DONE
* Delete one student. - DONE
* Show the final result. - DONE

---

## Resetting the Database

Every time the program runs, `create.sql` drops and recreates the tables.

This means old data is removed and fresh data is inserted again.

---

## Common Problems

### Problem: Foreign key error

This means you tried to insert a student with a `course_id` that does not exist in the `courses` table.

Fix it by using a valid `course_id`.

---

### Problem: UNIQUE constraint failed

This means you inserted an email that already exists.

Fix it by using a different email.

---

### Problem: CHECK constraint failed

This means you inserted an invalid value.

For example, student age must be 18 or older.

---

### Problem: NOT NULL constraint failed

This means a required value was missing.

For example, student name and email cannot be null.

---

## Learning Goals

By completing this project, you will learn how to:

* create database tables
* use primary keys
* use foreign keys
* insert data
* select data
* join two tables
* update records
* delete records
