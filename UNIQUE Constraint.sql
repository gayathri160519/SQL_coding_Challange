-- SQL Question 2: UNIQUE Constraint --
-- Add a UNIQUE constraint to the ISBN column in Books --

USE online_bookstore;

ALTER TABLE Books
ADD CONSTRAINT UQ_ISBN UNIQUE (ISBN);            -- ISBN values are enforced as unique --

INSERT INTO Books (BookID, ISBN, Title, Author, Price)
VALUES
(1, '978-0134685991', 'Effective Java', 'Joshua Bloch', 45.99),
(2, '978-0596009205', 'Head First SQL', 'Lynn Beighley', 35.50),
(3, '978-1491957660', 'Learning Python', 'Mark Lutz', 55.00);

INSERT INTO Order_s (OrderID, BookID, OrderDate, Quantity)
VALUES
(104, 1, '2026-09-01', 2),   
(105, 2, '2026-09-02', 1),   
(106, 3, '2026-09-03', 3);   




