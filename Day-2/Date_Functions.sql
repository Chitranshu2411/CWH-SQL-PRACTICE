
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

-- SQL DATE FUNCTIONS 
   
    NOW() 
-- Ye query users table se id aur gender nikalti hai,
-- name ko lowercase me convert karti hai,
-- lowercase name ke sath "2411" jod kar username banati hai,
-- current date & time show karti hai,
-- aur name ki length calculate karti hai.
SELECT id, gender, LOWER(name) as lower , CONCAT(LOWER(name),"2411") as username, NOW() as time, LENGTH(name) AS name_len FROM users;

YEAR() , MONTH() , DAY()
-- Ye query users table se id aur gender nikalti hai,
-- name ko lowercase me convert karti hai,
-- lowercase name ke sath "5677" jod kar username banati hai,
-- date_of_birth se month nikalti hai,
-- aur name ki length calculate karti hai.
SELECT id , gender , LOWER(name) as lower , CONCAT (LOWER(name), "5677") as username, MONTH(date_of_birth) as day , LENGTH(name) AS name_len FROM users;


DATEDIFF() 
-- Har user ne apni date_of_birth se ab tak kitne din jeeye hain, ye calculate karne ke liye query
SELECT name, DATEDIFF(CURDATE() , date_of_birth) AS days_lived FROM users;

TIMESTAMPDIFF()
-- Har user ki current age (years me) calculate karne ke liye query
SELECT name, TIMESTAMPDIFF(YEAR ,date_of_birth, CURDATE()) AS age FROM users;

