-- COMPLETE INDEX EXAMPLE (SQL) 

-- ======================================
-- 1️⃣ Create Table
-- ======================================
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT
);

-- Insert Sample Data
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 50000),
(2, 'Rohit', 'HR', 60000),
(3, 'Suman', 'IT', 70000),
(4, 'Neha', 'Finance', 65000);

-- ======================================
-- 2️⃣ Viewing Indexes on Table
-- ======================================
SHOW INDEX FROM employees;

-- ======================================
-- 3️⃣ Creating Single-Column Index
-- ======================================
CREATE INDEX idx_name
ON employees(name);

-- Check Index Again
SHOW INDEX FROM employees;

-- ======================================
-- 4️⃣ Creating Multi-Column Index
-- ======================================
CREATE INDEX idx_dept_salary
ON employees(department, salary);

-- Check Index Again
SHOW INDEX FROM employees;

-- ======================================
-- 5️⃣ Index Order Matters Example
-- ======================================
-- This query will use the multi-column index
SELECT * FROM employees
WHERE department = 'IT' AND salary = 70000;

-- But this query may NOT fully use the index
SELECT * FROM employees
WHERE salary = 70000;

-- ======================================
-- 6️⃣ Dropping an Index
-- ======================================
DROP INDEX idx_name ON employees;

-- Check Again
SHOW INDEX FROM employees;

-- Single Column Index
CREATE INDEX idx_name ON employees(name);

-- Multi Column Index
CREATE INDEX idx_dept_salary ON employees(department, salary);

-- Dropping an Index
DROP INDEX idx_email ON users;

-- SUPER SHORT NOTE ON INDEXES

-- Index = data जल्दी ढूंढने का तरीका
-- Search fast करता है
-- लेकिन insert/update थोड़ा slow करता है