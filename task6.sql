USE e_commerce_system;

-- 1. Scalar Subquery: Get customers whose total order amount is above average
SELECT name, email
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING SUM(total_amount) > (SELECT AVG(total_amount) FROM Orders)
);

-- 2. Correlated Subquery: Find orders that have more than one item
SELECT order_id, customer_id, order_date
FROM Orders o
WHERE (
    SELECT COUNT(*) 
    FROM Order_Items oi 
    WHERE oi.order_id = o.order_id
) > 1;

-- 3. Subquery in SELECT: Show total items per order next to each order
SELECT order_id,
       (SELECT SUM(quantity) FROM Order_Items WHERE order_id = o.order_id) AS total_items
FROM Orders o;

-- 4. Subquery in FROM: Get average revenue per product using derived table
SELECT product_id, ROUND(avg_revenue, 2) AS avg_revenue
FROM (
    SELECT product_id, AVG(price * quantity) AS avg_revenue
    FROM Order_Items
    GROUP BY product_id
) AS RevenueData;

-- 5. EXISTS Subquery: Customers who have placed at least one order
SELECT name
FROM Customers c
WHERE EXISTS (
    SELECT 1 FROM Orders o WHERE o.customer_id = c.customer_id
);

-- 6. NOT EXISTS Subquery: Customers who never placed any orders
SELECT name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1 FROM Orders o WHERE o.customer_id = c.customer_id
);

-- 7. IN Subquery: Products that have been ordered at least once
SELECT product_name
FROM Products
WHERE product_id IN (
    SELECT DISTINCT product_id FROM Order_Items
);

-- 8. ALL Subquery: Customers who placed orders with total amount greater than all orders of customer_id = 2
SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING SUM(total_amount) > ALL (
    SELECT total_amount FROM Orders WHERE customer_id = 2
);

-- 9. Subquery using LIMIT inside FROM (MySQL 8.0+ required)
SELECT * FROM (
    SELECT * FROM Orders ORDER BY total_amount DESC LIMIT 5
) AS top_orders;

-- 10. Multi-Level Subquery: Products in highest revenue category
SELECT product_name
FROM Products
WHERE category_id = (
    SELECT category_id FROM (
        SELECT category_id, SUM(price * stock) AS total_value
        FROM Products
        GROUP BY category_id
        ORDER BY total_value DESC
        LIMIT 1
    ) AS TopCategory
);
