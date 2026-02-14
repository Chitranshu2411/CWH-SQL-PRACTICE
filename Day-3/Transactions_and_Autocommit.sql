
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

-- Autocommit ko band karta hai, manual COMMIT ki jarurat hoti hai
SET autocommit = 0;

SELECT * FROM employees ;

-- TRANSACTIONS AND AUTOCOMMIT 

-- COMMIT ka use transaction ke changes ko permanently save karne ke liye hota hai
 COMMIT;
  
  -- Agar koi galti ho jaye to transaction ko wapas pehle wale state me le jane ke liye
   ROLLBACK;
   
-- Specific employee record delete karne ke liye
DELETE from employees WHERE id=5;

-- Autocommit mode ON karne ke liye
SET autocommit = 1;
