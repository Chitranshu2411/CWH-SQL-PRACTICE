-- LEFT JOIN
-- LEFT JOIN left table ke sabhi records ko show karta hai
-- aur right table ke matching records ko join karta hai
-- agar match nahi milta to NULL value return karta hai

-- Database Select
USE startersql;

-- Safe run ke liye purani tables delete
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS students;

---------------------------------------------------
-- Students Table
---------------------------------------------------
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    email VARCHAR(100)
);

-- Insert Students Data
INSERT INTO students (name, gender, email)
VALUES
('Rahul', 'Male', 'rahul@gmail.com'),
('Priya', 'Female', 'priya@gmail.com'),
('Amit', 'Male', 'amit@gmail.com');

---------------------------------------------------
-- Addresses Table
---------------------------------------------------
CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert Addresses Data
INSERT INTO addresses (student_id, city, state, pincode)
VALUES
(1, 'Mumbai', 'Maharashtra', '400001'),
(2, 'Bhopal', 'Madhya Pradesh', '462001');


---------------------------------------------------
-- 🔵 LEFT JOIN
---------------------------------------------------
SELECT 
    students.name,
    students.gender,
    addresses.city,
    addresses.state
FROM students
LEFT JOIN addresses
ON students.id = addresses.student_id;