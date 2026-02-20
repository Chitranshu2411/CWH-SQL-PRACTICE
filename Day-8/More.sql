-- ==========================================
-- DATABASE SELECTION
-- ==========================================
USE startersql;



-- ==========================================
-- 1️⃣ LOGICAL OPERATORS (AND, OR, NOT)
-- ==========================================

-- AND → Dono condition true honi chahiye
SELECT * FROM users
WHERE gender = 'Male' AND salary > 50000;

-- OR → Koi bhi ek condition true ho
SELECT * FROM users
WHERE gender = 'Female' OR salary > 60000;

-- NOT → Condition ko reverse karta hai
SELECT * FROM users
WHERE NOT gender = 'Male';



-- ==========================================
-- 2️⃣ ADD A COLUMN TO EXISTING TABLE
-- ==========================================

-- Table me new column add karna
ALTER TABLE users
ADD phone VARCHAR(15);



-- ==========================================
-- 3️⃣ WILDCARD OPERATORS (LIKE)
-- ==========================================

-- %  → Multiple characters match karta hai
SELECT * FROM users
WHERE name LIKE 'A%';   -- A se start hone wale naam

-- _ → Single character match karta hai
SELECT * FROM users
WHERE name LIKE '_a%';  -- Second letter 'a' ho



-- ==========================================
-- 4️⃣ LIMIT WITH OFFSET
-- ==========================================

-- LIMIT → Kitne records chahiye
SELECT * FROM users
LIMIT 5;

-- LIMIT with OFFSET → Pagination ke liye use hota hai
-- Syntax: LIMIT offset, count
SELECT * FROM users
LIMIT 5, 5;  -- Pehle 5 skip karega, next 5 show karega



-- ==========================================
-- 5️⃣ DISTINCT KEYWORD
-- ==========================================

-- Duplicate values remove karke unique values show karega
SELECT DISTINCT gender FROM users;



-- ==========================================
-- 6️⃣ TRUNCATE KEYWORD
-- ==========================================

-- Table ka pura data delete karega (faster than DELETE)
-- Structure safe rahega
TRUNCATE TABLE user_log;



-- ==========================================
-- 7️⃣ CHANGE vs MODIFY COLUMN
-- ==========================================

-- MODIFY → Data type change karta hai (name same rahega)
ALTER TABLE users
MODIFY salary BIGINT;

-- CHANGE → Column ka naam + data type dono change kar sakte hain
ALTER TABLE users
CHANGE phone contact_number VARCHAR(20);



-- ==========================================
-- SUMMARY (Quick Revision)
-- ==========================================

-- AND  → Dono condition true
-- OR   → Koi ek true
-- NOT  → Reverse condition
-- ADD  → New column add karna
-- LIKE → Pattern match
-- LIMIT OFFSET → Pagination
-- DISTINCT → Duplicate remove
-- TRUNCATE → Fast full delete
-- MODIFY → Sirf datatype change
-- CHANGE → Name + datatype change

-- SUMMARY 
Interview Tip Line

"Logical operators filtering ke liye use hote hain, LIMIT pagination ke liye, DISTINCT duplicates remove karta hai, aur ALTER TABLE se structure modify karte hain."