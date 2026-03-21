CREATE DATABASE student;
USE student;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  gender ENUM('Male', 'Female', 'Other'),
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (id, name, email, gender, date_of_birth, created_at)
VALUES (1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);

SELECT * FROM users;