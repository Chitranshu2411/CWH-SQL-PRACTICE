CREATE TABLE admin_users(
id INT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
gender ENUM('Male','Female','Other'),
date_of_birth DATE,
salary INT
);

INSERT INTO admin_users(id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Priya Sharma', 'priya@example.com', 'Female', '1990-08-25', 55000),
(103, 'Rahul Verma', 'rahul@example.com', 'Male', '1988-01-15', 72000),
(104, 'Sneha Patel', 'sneha@example.com', 'Female', '1995-06-30', 48000),
(105, 'Amit Singh', 'amit@example.com', 'Male', '1992-11-05', 65000),
(106, 'Neha Gupta', 'neha@example.com', 'Female', '1993-03-18', 53000),
(107, 'Vikas Yadav', 'vikas@example.com', 'Male', '1987-09-09', 80000),
(108, 'Kavita Joshi', 'kavita@example.com', 'Female', '1996-12-21', 47000);

SELECT * FROM admin_users;


-- UNION EXAMPLE
-- UNION: Dono SELECT queries ke result ko combine karta hai
-- aur duplicate records ko hata deta hai.
-- Final output me sirf unique records aate hain. 
SELECT email, name FROM users
UNION 
SELECT email, name FROM admin_users;

-- UNION ALL EXAMPLE
-- UNION ALL: Dono SELECT queries ke result ko combine karta hai
-- lekin duplicate records ko remove nahi karta.
-- Sabhi records (including duplicates) show karta hai.
SELECT email, name FROM users
UNION ALL
SELECT email, name FROM admin_users;

-- DONO KA SHORT VERSION 
-- UNION duplicate hataata hai
-- UNION ALL duplicate nahi hataata

-- users aur admin_users tables ke name ko combine karke role ke saath show karta hai
SELECT name , 'User' AS role FROM users
UNION 
SELECT name, 'Admin' AS role FROM admin_users;

-- USING ORDER BY WITH UNION 
-- Ye query users aur admin_users dono tables se name select karti hai
-- UNION ka use karke dono tables ke records ko combine karti hai
-- UNION duplicate names ko remove karta hai
-- ORDER BY name result ko alphabetically sort karta hai
SELECT name FROM users
UNION 
SELECT name FROM admin_users
ORDER BY name;