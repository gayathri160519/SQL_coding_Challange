-- SQL Question 2: Aggregate Functions --

-- Write queries using COUNT, SUM, AVG, MAX, MIN on Sales --

USE E_Commerce;

-- 1. Total number of products

SELECT COUNT(*) AS total_products
FROM products;

-- 2. Total inventory value (sum of price × stock)

SELECT SUM(price * stock_quantity) AS total_inventory_value
FROM products;

-- 3. Average product price

SELECT AVG(price) AS avg_price
FROM products;

-- 4. Highest priced product

SELECT MAX(price) AS max_price
FROM products;

-- 5. Lowest priced product

SELECT MIN(price) AS min_price
FROM products;
