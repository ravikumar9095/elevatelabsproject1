USE e_commerce_system;

-- 1. Create a view for customer order summaries
CREATE VIEW customer_order_summary AS
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders, 
       ROUND(SUM(o.total_amount), 2) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- 2. View: Top-selling products by quantity
CREATE VIEW top_selling_products AS
SELECT p.product_id, p.product_name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC;

-- 3. View with condition: High-value orders only
CREATE VIEW high_value_orders AS
SELECT * FROM Orders
WHERE total_amount > 10000;

-- 4. View with multiple joins: Detailed order breakdown
CREATE VIEW order_details_view AS
SELECT o.order_id, c.name AS customer, p.product_name, oi.quantity, oi.price
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;

-- 5. View with check option (optional update protection)
CREATE VIEW limited_orders_view AS
SELECT * FROM Orders
WHERE total_amount < 20000
WITH CHECK OPTION;

-- 6. View usage example (select from view)
SELECT * FROM customer_order_summary;
SELECT * FROM top_selling_products;
