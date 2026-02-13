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
SELECT * FROM employees;

-- SQL FUNCTIONS 

-- Ye total employees count karega
SELECT COUNT(*) FROM employees;

-- Count the total number of female employees
SELECT COUNT(*) FROM employees WHERE gender = "Female";


-- Yeh query employees table me se sabse kam aur sabse zyada salary nikalti hai
-- MIN(salary) sabse kam salary return karta hai
-- MAX(salary) sabse zyada salary return karta hai
-- AS ka use result column ka naam badalne (alias dene) ke liye hota hai
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM employees;


-- Yeh query employees table ki sabhi salaries ka total nikalti hai
-- SUM(salary) sabhi salary values ko jodta hai
-- AS ka use result column ka naam dene (alias) ke liye hota hai
 SELECT SUM(salary) AS total_payroll FROM employees;


-- Yeh query employees table ki average (ausat) salary nikalti hai
-- AVG(salary) sabhi salary ka average calculate karta hai
-- AS ka use result column ka naam dene (alias) ke liye hota hai
  SELECT AVG(salary) AS avg_salary FROM employees;     
 
 -- Yeh query gender ke hisaab se average (ausat) salary nikalti hai
-- GROUP BY gender ka matlab hai data ko gender ke according group karna
-- AVG(salary) har gender group ki average salary calculate karta hai
  SELECT gender, AVG(salary) AS avg_salary FROM employees GROUP BY gender;
 
 -- Yeh query gender ke hisaab se total salary (sum) nikalti hai
-- GROUP BY gender data ko gender ke basis par group karta hai
-- SUM(salary) har gender group ki total salary jodta hai
  SELECT gender, SUM(salary) AS avg_salary FROM employees GROUP BY gender;