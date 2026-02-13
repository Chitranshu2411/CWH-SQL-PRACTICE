CREATE TABLE IF NOT EXISTS employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male','Female','Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, email, gender, date_of_birth, salary) VALUES
('Amit Sharma', 'amit@example.com', 'Male', '1998-05-14', 55000.00),
('Pooja Verma', 'pooja@example.com', 'Female', '1997-08-21', 62000.00),
('Rahul Singh', 'rahul@example.com', 'Male', '1995-12-10', 48000.00),
('Sneha Patel', 'sneha@example.com', 'Female', '1999-03-25', 53000.00),
('Arjun Mehta', 'arjun@example.com', 'Male', '1996-07-18', 70000.00),
('Neha Gupta', 'neha@example.com', 'Female', '1998-11-02', 59000.00),
('Karan Yadav', 'karan@example.com', 'Male', '1994-09-30', 75000.00),
('Anjali Rao', 'anjali@example.com', 'Female', '2000-01-15', 46000.00),
('Vikas Jain', 'vikas@example.com', 'Male', '1993-04-08', 68000.00),
('Ritika Das', 'ritika@example.com', 'Female', '1997-06-12', 52000.00);

USE startersql;
SELECT * FROM employees ;

-- SQL STRING FUNCTIONS 

-- LENGTH() 
-- Yeh query employees table se har employee ka naam aur
-- us naam ki length (kitne characters hain) nikalti hai
-- LENGTH(name) naam me total characters count karta hai
-- AS ka use result column ka naam dene (alias) ke liye hota hai
 SELECT name, LENGTH(name) AS name_length FROM employees;
 SELECT id, gender,name, LENGTH(name) AS name_length FROM employees;

-- LOWER() and UPPER() 

-- Naam ko lowercase (chhote letters) me convert karne ke liye
 SELECT name, Lower(name) AS lowercase_name FROM users;

-- Naam ko uppercase (bade letters) me convert karne ke liye
 SELECT name , UPPER(name) AS uppercase_name FROM users;

-- Yeh query users table se id, gender aur name se related details nikalti hai
-- LOWER(name) naam ko lowercase me convert karta hai
-- CONCAT(LOWER(name),"2411") naam ke saath 2411 jodkar username banata hai
-- LENGTH(name) naam ki total length (characters) batata hai
 SELECT id, gender, LOWER(name) as lower , CONCAT(LOWER(name),"2411") as username, LENGTH(name) AS name_len FROM users;
