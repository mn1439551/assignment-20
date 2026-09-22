CREATE DATABASE school_db;

CREATE Table students_table(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(20)
    city VARCHAR(50)
)


INSERT INTO students_table(student_id, first_name, last_name, age, grade, city) VALUES
    (1, "Ahmad", "Ahmad", 17, 'A', "Beirut"),
    (2, "Sara", "Khatib", 18, 'B', "Tripoli"),
    (3, "Hassan", "Zein", 17, 'A', "Sidon"),
    (4, "Mariam", "Ata", 19, 'C', "Beirut"),
    (5, "Khaled", "Najjar", 16, 'B', "Tyre"),
    (6, "Reem", "Salem", 18, 'A', "Tripoli"),
    (7, "Youssef", "Hany", 17, 'C', "NULL"),
    (8, "Hiba", "Zein", 20, 'B', "Beirut"),
    (9, "Fadi", "Hashem", 16, 'A', "Tyre"),
    (10, "Layla", "Hassan", 17, 'B', "Tripoli");


SELECT *
FROM students_table;

SELECT first_name, city
FROM students_table;

SELECT *
FROM students_table
WHERE grade = 'B';

SELECT *
FROM students_table
WHERE city != "Beirut";

SELECT *
FROM students_table
WHERE age > 17;

SELECT *
FROM students_table
WHERE age >= 18;

SELECT *
FROM students_table
WHERE student_id < 5;

SELECT *
FROM students_table
WHERE age <= 16;

SELECT *
FROM students_table
WHERE city IS NULL;

SELECT *
FROM students_table
WHERE city IS NOT NULL;

SELECT *
FROM students_table
WHERE age BETWEEN 17 AND 19

SELECT *
FROM students_table
WHERE age > 17 AND grade = 'A';

SELECT *
FROM students_table
WHERE city = "Beirut" OR city = "Tripoli";

DELETE FROM students_table
WHERE student_id = 10;

DELETE FROM students_table
WHERE age < 17;

CREATE DATABASE university_db

CREATE TABLE students(
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK(age >= 18),
    registration_date DATE,
    registration_time TIME,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO students(student_id, full_name, email, age, registration_date, registration_time, created_at) VALUES(
    1, "Omar Charaf", "omarcharaf12@gmail.com", 26, "2026-10-22", "11:25:00", DEFAULT
)


INSERT INTO students(student_id, full_name, email, age, registration_date, registration_time) VALUES(
    2, "Mohammad Naser", "mohammadnaser20221@gmail.com", 26, "2026-10-22", "11:25:00"
)



