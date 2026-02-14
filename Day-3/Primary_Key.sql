-- Create database
CREATE DATABASE college_db;

-- Use database
USE college_db;

-- Create students table with Primary Key
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT
);

INSERT INTO students (name, email, age)
VALUES 
('Rahul', 'rahul@gmail.com', 20),
('Anjali', 'anjali@gmail.com', 21);

SELECT * FROM students;

-- PRIMARY KEY:
-- 1. Unique hoti hai
-- 2. NULL nahi ho sakti
-- 3. Har row ko uniquely identify karti hai
-- 4. Ek table me sirf ek primary key hoti hai