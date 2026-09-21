-- Day 35: Triggers & Transactions --
-- SQL Question 1: Trigger --
-- Log every deletion in the Orders table --

USE datadb;
CREATE TABLE Order_History (
    order_id INT,                                   -- Stores the deleted order details --
    customer_id INT,                                -- deleted_at automatically records when the deletion happened --
    order_date DATE,
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);


DELIMITER $$

CREATE TRIGGER LogOrderDeletion
AFTER DELETE ON Orders                                             -- AFTER DELETE → trigger fires after a row is deleted --
FOR EACH ROW                                       
BEGIN
    INSERT INTO Order_History (order_id, customer_id, order_date)
    VALUES (OLD.order_id, OLD.customer_id, OLD.order_date);        -- OLD → refers to the deleted row’s values --
END$$                                                              -- The deleted record is copied into Order_History --

DELIMITER ;

INSERT INTO Orders VALUES (101, 2001, '2026-08-15', 5000.00);
SELECT * FROM Orders;
DELETE FROM Orders WHERE order_id = 101;
SELECT * FROM Orders;
SELECT * FROM Order_History;

-- Deleted records are logged automatically -- Used AI Support --


