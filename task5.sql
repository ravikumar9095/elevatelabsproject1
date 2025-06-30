USE e_commerce_system;

-- 1. INNER JOIN: Customers who placed orders
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- 2. LEFT JOIN: All customers and their orders (including customers without orders)
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- 3. RIGHT JOIN: All orders and their customers (if some orders exist without customers)
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 4. FULL OUTER JOIN: Combine left and right join results
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- 5. JOIN multiple tables: Orders + Order_Items + Products
SELECT o.order_id, c.name AS customer_name, p.product_name, oi.quantity, oi.price
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
INNER JOIN Products p ON oi.product_id = p.product_id;

-- 6. CROSS JOIN: All combinations of Customers and Products
SELECT c.name AS customer, p.product_name
FROM Customers c
CROSS JOIN Products p;

-- 7. NATURAL JOIN (simulate with matching column names - only if same name and type)
-- This is a conceptual example as MySQL doesn’t enforce NATURAL JOIN unless explicitly used.

-- 8. SELF JOIN: Customers from same address (simulated example)
SELECT A.name AS customer1, B.name AS customer2, A.address
FROM Customers A
JOIN Customers B ON A.address = B.address AND A.customer_id != B.customer_id;
