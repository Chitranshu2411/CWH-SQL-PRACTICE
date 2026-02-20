-- startersql database ko select kar rahe hain taaki procedure isi DB me create ho
USE startersql;

-- Default delimiter (;) ko $$ me change karte hain
-- Kyunki procedure ke andar multiple semicolon use honge
DELIMITER $$

-- AddUser naam ka stored procedure bana rahe hain
-- Ye user details ko parameters ke through accept karega
CREATE PROCEDURE AddUser(
  -- IN ka matlab input parameter
    IN p_name VARCHAR(100), -- user ka name 
    IN p_email VARCHAR(100), -- user ka email
    IN p_gender ENUM('Male','Female','Other'), gender (fixed value)
    IN p_dob DATE, -- date of birth 
    IN p_salary INT -- salary
)
BEGIN 
    -- users table me new record insert kar rahe hain
    INSERT INTO users(name, email, gender, date_of_birth, salary)
    VALUES(p_name, p_email, p_gender, p_dob, p_salary);
   -- Insert ke baad table ka updated result show karega
    SELECT * FROM users;
END $$

-- Delimiter ko wapas default (;) par set kar dete hain
DELIMITER ;

-- Procedure ko call karke test kar sakte hain
CALL AddUser('John', 'john@harry.com', 'Other', '1990-07-21', 74000);

-- startersql database ke sare procedures show karega
SHOW PROCEDURE STATUS WHERE Db = 'startersql';

-- Agar procedure delete karna ho to use karte hain
 DROP PROCEDURE IF EXISTS AddUser;