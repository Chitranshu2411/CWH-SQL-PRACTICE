-- ================================
--  Table Create
-- ================================
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

-- ================================
-- Insert Initial Data
-- ================================
INSERT INTO employees VALUES
(1, 'Amit', 40000),
(2, 'Rohit', 60000),
(3, 'Suman', 70000);

-- ================================
-- Creating a View
-- View will show employees 
-- whose salary is greater than 50000
-- ================================
CREATE VIEW high_salary_emp AS
SELECT id, name, salary
FROM employees
WHERE salary > 50000;

-- ================================
-- Querying the View
-- ================================
SELECT * FROM high_salary_emp;

-- ================================
-- Insert New Record in Table
-- (View automatically reflect karega)
-- ================================
INSERT INTO employees VALUES (4, 'Neha', 80000);

-- Check View Again
SELECT * FROM high_salary_emp;

-- ================================
-- Update Existing Record
-- (View automatically update ho jayega)
-- ================================
UPDATE employees
SET salary = 55000
WHERE id = 1;

-- Final Check of View
SELECT * FROM high_salary_emp;

-- JOIN 

-- View ek virtual table hoti hai.
-- Ye data store nahi karti.
-- Original table me insert/update/delete hone par
-- View automatically updated result show karti hai.

-- VIEW ACTUALLY KR KYA RAHA HAI ? 

-- Query ko store krta hai.
-- Complex query ko simple bna deta hai.
-- Security provide krta hai.
-- Hamesha latest data show krta hai.