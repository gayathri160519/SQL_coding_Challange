-- Day 29: Constraints --
-- SQL Question 1: PRIMARY KEY & FOREIGN KEY  --

CREATE DATABASE  online_bookstore;
USE online_bookstore;

-- Create Books table with primary key --
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    ISBN VARCHAR(20),
    Title VARCHAR(100),
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);

-- Create Orders table with foreign key referencing Books(BookID) --
CREATE TABLE Order_s (
    OrderID INT PRIMARY KEY,
    BookID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);



