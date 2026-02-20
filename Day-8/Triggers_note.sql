-- ==========================================
-- TRIGGER KYA HOTA HAI?
-- ==========================================
-- Trigger ek automatic database object hota hai.
-- Jab table me INSERT, UPDATE ya DELETE event hota hai,
-- tab trigger automatically execute ho jata hai.

-- Important Points:
-- 1. Trigger ko manually call nahi karte.
-- 2. Ye kisi specific table event ke saath attach hota hai.
-- 3. Har affected row ke liye execute hota hai (FOR EACH ROW).

-- Trigger Types:
-- BEFORE  -> Event hone se pehle execute hota hai
-- AFTER   -> Event hone ke baad execute hota hai

-- NEW keyword:
-- Insert ya Update hone wali new row ko represent karta hai

-- OLD keyword:
-- Delete ya Update hone se pehle wali row ko represent karta hai

-- Common Use Cases:
-- 1. Audit Logging (data tracking)
-- 2. Data Validation (negative salary check)
-- 3. Security Rules
-- 4. Automatic Calculations

-- Difference:
-- Stored Procedure = Manually call hota hai
-- Trigger = Automatically call hota hai