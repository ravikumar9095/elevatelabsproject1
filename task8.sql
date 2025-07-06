
USE e_commerce_system;

-- Procedure: Get Orders by Customer
DELIMITER //
CREATE PROCEDURE GetOrdersByCustomer(IN cust_id INT)
BEGIN
    SELECT o.order_id, o.order_date, o.total_amount
    FROM Orders o
    WHERE o.customer_id = cust_id;
END //
DELIMITER ;

-- Function: Total Amount Spent by Customer
DELIMITER //
CREATE FUNCTION TotalSpentByCustomer(cust_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(total_amount) INTO total
    FROM Orders
    WHERE customer_id = cust_id;
    RETURN COALESCE(total, 0);
END //
DELIMITER ;

-- Procedure: Add New Customer
DELIMITER //
CREATE PROCEDURE AddCustomer(
    IN cname VARCHAR(100),
    IN cemail VARCHAR(100),
    IN caddress VARCHAR(255)
)
BEGIN
    INSERT INTO Customers(name, email, address)
    VALUES (cname, cemail, caddress);
END //
DELIMITER ;

-- Procedure: Get Order Details by Order ID
DELIMITER //
CREATE PROCEDURE GetOrderDetails(IN oid INT)
BEGIN
    SELECT o.order_id, c.name AS customer_name, p.product_name, oi.quantity, oi.price
    FROM Orders o
    JOIN Customers c ON o.customer_id = c.customer_id
    JOIN Order_Items oi ON o.order_id = oi.order_id
    JOIN Products p ON oi.product_id = p.product_id
    WHERE o.order_id = oid;
END //
DELIMITER ;

-- Procedure: Check Product Stock
DELIMITER //
CREATE PROCEDURE CheckProductStock(IN pid INT)
BEGIN
    SELECT product_name, stock
    FROM Products
    WHERE product_id = pid;
END //
DELIMITER ;

-- Function: Order Count by Customer
DELIMITER //
CREATE FUNCTION OrderCountByCustomer(cid INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM Orders
    WHERE customer_id = cid;
    RETURN total;
END //
DELIMITER ;

-- Function: Max Product Price
DELIMITER //
CREATE FUNCTION MaxProductPrice()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE max_price DECIMAL(10,2);
    SELECT MAX(price) INTO max_price FROM Products;
    RETURN max_price;
END //
DELIMITER ;

-- Function: Total Items in Order
DELIMITER //
CREATE FUNCTION TotalItemsInOrder(orderid INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(quantity) INTO total
    FROM Order_Items
    WHERE order_id = orderid;
    RETURN total;
END //
DELIMITER ;
