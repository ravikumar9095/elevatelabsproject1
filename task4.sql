USE e_commerce_system;

-- 1. Total number of orders placed by each customer
SELECT customer_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY customer_id;

-- 2. Total quantity sold for each product
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM Order_Items
GROUP BY product_id;

-- 3. Average order amount for each customer
SELECT customer_id, ROUND(AVG(total_amount), 2) AS avg_order_amount
FROM Orders
GROUP BY customer_id;

-- 4. Total revenue (sum of price × quantity) per product
SELECT product_id, SUM(price * quantity) AS total_revenue
FROM Order_Items
GROUP BY product_id;

-- 5. Total number of products in each category
SELECT category_id, COUNT(*) AS product_count
FROM Products
GROUP BY category_id;

-- 6. Customers who placed more than 1 order
SELECT customer_id, COUNT(*) AS order_count
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- 7. Highest and lowest product prices in each category
SELECT category_id, MAX(price) AS highest_price, MIN(price) AS lowest_price
FROM Products
GROUP BY category_id;

-- 8. Average price of all products
SELECT ROUND(AVG(price), 2) AS avg_product_price
FROM Products;

-- 9. Total number of orders
SELECT COUNT(*) AS total_orders
FROM Orders;

-- 10. Count of distinct product categories
SELECT COUNT(DISTINCT category_id) AS unique_categories
FROM Products;
