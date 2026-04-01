CREATE DATABASE retail_db;
USE retail_db;
SHOW DATABASES;
CREATE TABLE retail_sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);
SELECT * FROM retail_sales;
SHOW TABLES;
Total Revenue

SELECT SUM(quantity * price) AS total_revenue
FROM retail_sales;

Total Orders
SELECT COUNT(*) AS total_orders
FROM retail_sales;
DESCRIBE retail_sales;

Top Selling Products

SELECT product_name, SUM(quantity * price) AS total_sales
FROM retail_sales
GROUP BY product_name
ORDER BY total_sales DESC;

SELECT * FROM retail_sales LIMIT 5;
