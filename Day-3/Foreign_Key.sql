-- Use existing database
USE startersql;

-- Agar addresses table pehle se exist karti hai to delete kar do
DROP TABLE IF EXISTS addresses;

-- Addresses table create kar rahe hain
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key (unique + auto increment)
    
    user_id INT,  -- Ye users table ke id se connect hoga (Foreign Key)
    
    street VARCHAR(255),  -- Ghar ka address / street
    city VARCHAR(100),    -- City name
    state VARCHAR(100),   -- State name
    pincode VARCHAR(10),  -- Postal code
    
    -- Foreign Key constraint
    -- Agar users table se koi user delete hoga
    -- to uske related addresses bhi automatically delete ho jayenge (ON DELETE CASCADE)
    CONSTRAINT fk_user 
    FOREIGN KEY (user_id) 
    REFERENCES users(id) 
    ON DELETE CASCADE
);

-- Multiple address records insert kar rahe hain
INSERT INTO addresses (user_id, street, city, state, pincode)
VALUES 
(1, 'MG Road', 'Bhopal', 'Madhya Pradesh', '462001'),
(2, 'Station Road', 'Indore', 'Madhya Pradesh', '452001'),
(3, 'Civil Lines', 'Delhi', 'Delhi', '110001'),
(1, 'Arera Colony', 'Bhopal', 'Madhya Pradesh', '462016'),
(2, 'Vijay Nagar', 'Indore', 'Madhya Pradesh', '452010'),
(3, 'Karol Bagh', 'New Delhi', 'Delhi', '110005'),
(1, 'MP Nagar', 'Bhopal', 'Madhya Pradesh', '462011');

-- Table ke andar ka data dekhne ke liye
SELECT * FROM addresses;

-- Specific address delete karne ke liye (id = 2)
DELETE FROM addresses WHERE id = 2;

-- Foreign Key constraint ko remove karne ke liye
-- Pehle foreign key ka naam fk_user hai isliye direct drop ho jayega
ALTER TABLE addresses 
DROP FOREIGN KEY fk_user;