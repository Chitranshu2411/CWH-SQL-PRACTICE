-- ==========================================
-- 1️⃣ USE DATABASE
-- ==========================================
USE startersql;


-- ==========================================
-- 2️⃣ Change Delimiter
-- ==========================================
DELIMITER $$


-- ==========================================
-- 3️⃣ BEFORE INSERT TRIGGER
-- ==========================================
-- Salary validation trigger
-- Agar salary negative hogi to error throw karega

CREATE TRIGGER before_user_insert
BEFORE INSERT ON users
FOR EACH ROW
BEGIN

    -- Check salary condition
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;

END $$


-- ==========================================
-- 4️⃣ AFTER INSERT TRIGGER
-- ==========================================
-- Insert hone ke baad user_log table me record add karega

CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN

    -- NEW keyword inserted row ko represent karta hai
    
    INSERT INTO user_log(user_id, name, action_type)
    VALUES(NEW.id, NEW.name, 'INSERT');

END $$


-- ==========================================
-- 5️⃣ AFTER DELETE TRIGGER
-- ==========================================
-- User delete hone par log maintain karega

CREATE TRIGGER after_user_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN

    -- OLD keyword deleted row ko represent karta hai
    
    INSERT INTO user_log(user_id, name, action_type)
    VALUES(OLD.id, OLD.name, 'DELETE');

END $$


-- ==========================================
-- 6️⃣ Reset Delimiter
-- ==========================================
DELIMITER ;


-- ==========================================
-- 7️⃣ Testing Section
-- ==========================================

-- Valid Insert
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES ('Aman', 'aman@test.com', 'Male', '2000-01-01', 60000);

-- Invalid Insert (Negative Salary)
-- Ye error throw karega
-- INSERT INTO users (name, email, gender, date_of_birth, salary)
-- VALUES ('Test', 'test@test.com', 'Male', '2000-01-01', -5000);

-- Delete Test
DELETE FROM users WHERE name = 'Aman';

-- Check Logs
SELECT * FROM user_log;


-- ==========================================
-- 8️⃣ Drop Triggers
-- ==========================================
DROP TRIGGER IF EXISTS before_user_insert;
DROP TRIGGER IF EXISTS after_user_insert;
DROP TRIGGER IF EXISTS after_user_delete;