-- SQL Question 3: DELETE vs TRUNCATE --

-- Demonstrate DELETE with WHERE clause and TRUNCATE for Orders table --

USE online_bookstore;

-- Delete a single order by OrderID --

DELETE FROM Order_s WHERE OrderID = 101;

-- Delete all orders for a specific BookID --

DELETE FROM Order_s WHERE BookID = 2;

-- TRUNCATE --

TRUNCATE TABLE Order_s;

-- DELETE or removes selected rows & TRUNCATE clears all rows quickly --


