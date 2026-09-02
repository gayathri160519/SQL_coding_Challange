-- Day 31: Sorting & Aggregates --

-- SQL Question 1: ORDER BY & LIMIT --

CREATE DATABASE E_Commerce;
USE E_Commerce;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0
    );
    
    CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO products (product_name, category_id, price, stock_quantity)
VALUES 
('Laptop', 1, 75000.00, 10),
('Smartphone', 2, 55000.00, 25),
('Headphones', 3, 3000.00, 50),
('Smartwatch', 2, 12000.00, 15),
('Gaming Console', 4, 65000.00, 8);

INSERT INTO categories (category_name)
VALUES
('Electronics'),
('Mobiles'),
('Accessories'),
('Gaming');

-- Write a SQL query using ORDER BY and LIMIT --

SELECT product_id, product_name, price FROM products
ORDER BY price DESC
LIMIT 3;

-- Top 3 products by price are displayed --



    
    
