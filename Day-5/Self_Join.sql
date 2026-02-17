-- Table Create
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

-- Data Insert
INSERT INTO employees (id, name, manager_id) VALUES
(1, 'Amit', NULL),      -- Amit ka koi manager nahi (Top Manager)
(2, 'Rohit', 1),        -- Rohit ka manager Amit hai
(3, 'Suman', 1),        -- Suman ka manager Amit hai
(4, 'Neha', 2),         -- Neha ka manager Rohit hai
(5, 'Raj', 2);          -- Raj ka manager Rohit hai

-- Self Join Query
SELECT 
    e.name AS employee_name,
    m.name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.id;

-- SELF JOIN SHORT NOTE COMMENT 

-- Self Join ka use karke employees table ko khud se join kiya gaya hai
-- e employee ko represent karta hai
-- m manager ko represent karta hai
-- manager_id ko id se match karke employee aur manager ka relation dikhaya gaya hai