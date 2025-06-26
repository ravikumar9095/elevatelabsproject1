
USE e_commerce_system;

SELECT * FROM Products;
SELECT product_name, price FROM Products;
SELECT * FROM Customers WHERE address LIKE '%India%' AND name LIKE 'R%';
SELECT * FROM Products WHERE price BETWEEN 500 AND 20000;
SELECT * FROM Orders ORDER BY total_amount DESC;
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 3;
SELECT DISTINCT category_id FROM Products;
SELECT product_name AS Item, price AS Cost FROM Products;
SELECT * FROM Customers WHERE customer_id IN (1, 3, 5);
SELECT * FROM Customers WHERE customer_id NOT IN (2, 4);
SELECT * FROM Customers WHERE address IS NULL;
SELECT * FROM Customers WHERE address IS NOT NULL;
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 5 OFFSET 3;
SELECT customer_id, COUNT(*) AS order_count FROM Orders GROUP BY customer_id HAVING COUNT(*) > 1;
