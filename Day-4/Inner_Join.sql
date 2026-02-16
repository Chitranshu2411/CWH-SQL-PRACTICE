-- Inner Join 
INNER JOIN sirf un records ko return karta hai jo dono tables me match karte hain.

-- Database Select
USE startersql;

-- Drop tables if already exist (safe run ke liye)
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS users;

-- Create Users Table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    email VARCHAR(100)
);

-- Insert Data into Users
INSERT INTO users (name, gender, email)
VALUES
('Rahul', 'Male', 'rahul@gmail.com'),
('Priya', 'Female', 'priya@gmail.com'),
('Amit', 'Male', 'amit@gmail.com');

-- Create Addresses Table
CREATE TABLE addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert Data into Addresses
INSERT INTO addresses (user_id, city, state, pincode)
VALUES
(1, 'Mumbai', 'Maharashtra', '400001'),
(2, 'Bhopal', 'Madhya Pradesh', '462001'),
(3, 'Delhi', 'Delhi', '110001');

-- INNER JOIN Query
SELECT 
    users.name,
    users.gender,
    addresses.city,
    addresses.state,
    addresses.id AS addresses_id
FROM users
INNER JOIN addresses 
ON users.id = addresses.user_id;


