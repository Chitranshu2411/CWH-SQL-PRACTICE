-- RIGHT JOIN 

-- RIGHT JOIN me right table ke sabhi records aate hain.
-- Agar left table me matching record nahi milta,
-- to left table ki values NULL ho jaati hain.


-- Database Select
USE startersql;

-- Safe run ke liye purani tables delete
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

---------------------------------------------------
-- Customers Table (Left Table)
---------------------------------------------------
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100)
);

---------------------------------------------------
-- Orders Table (Right Table)
---------------------------------------------------
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(100),
    amount INT
);

---------------------------------------------------
-- Insert Data in Customers
---------------------------------------------------
INSERT INTO customers (name, city)
VALUES
('Rahul', 'Bhopal'),
('Priya', 'Indore'),
('Amit', 'Delhi');

---------------------------------------------------
-- Insert Data in Orders
---------------------------------------------------
INSERT INTO orders (customer_id, product_name, amount)
VALUES
(1, 'Laptop', 50000),
(2, 'Mobile', 20000),
(4, 'Tablet', 15000);  -- customer_id 4 exist nahi karta

---------------------------------------------------
-- RIGHT JOIN Query
---------------------------------------------------
SELECT 
    c.id,
    c.name,
    o.product_name,
    o.amount
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id;