-- SQL Question 3: TCL Commands --
-- Write SQL using COMMIT, ROLLBACK, SAVEPOINT --

USE employee;
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO Accounts VALUES
(101, 'Rahul', 20000.00),
(202, 'Priya', 15000.00);


START TRANSACTION;

-- Step 1: Deduct from sender --
UPDATE Accounts
SET balance = balance - 5000
WHERE account_id = 101;

-- Step 2: Add to receiver --
UPDATE Accounts
SET balance = balance + 5000
WHERE account_id = 202;

-- If everything is fine, commit --
COMMIT;

-- If something fails (e.g., receiver account not found), you can roll back --
ROLLBACK TO deduct_done;  -- undo only the deduction --
-- or --
ROLLBACK;                 -- undo the entire transaction --

select * from accounts;

-- COMMIT → both debit and credit succeed --
-- ROLLBACK → cancels the transaction, balances remain unchanged --
-- SAVEPOINT → lets you roll back to a safe stage instead of undoing everything --
-- Used AI support --