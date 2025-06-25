USE e_commerce_system;

INSERT INTO Customers (name, email, address) 
VALUES ('John Doe', 'johndoe@example.com', NULL);

INSERT INTO Categories (category_name) 
VALUES ('Toys');

INSERT INTO Products (product_name, price, category_id) 
VALUES ('Rubik Cube', 250.00, 5);

INSERT INTO Orders (customer_id, order_date, total_amount) 
VALUES (8, '2025-06-24', 250.00);

INSERT INTO Order_Items (order_id, product_id, quantity, price) 
VALUES (8, 8, 1, 250.00);

UPDATE Products 
SET price = 270.00 
WHERE product_name = 'Rubik Cube';

UPDATE Customers 
SET address = 'Mumbai, India' 
WHERE name = 'John Doe';

UPDATE Products 
SET stock = stock + 5 
WHERE product_name = 'Washing Machine';

DELETE FROM Products 
WHERE product_name = 'T-shirt - Large';

DELETE FROM Customers 
WHERE customer_id = 7;

SELECT * FROM Customers WHERE address IS NULL;

INSERT INTO Products (product_name, price, stock, category_id) 
VALUES ('Mystery Box', 999.00, 5, NULL);

INSERT INTO Products (product_name, price, category_id) 
VALUES ('Pen Drive 32GB', 450.00, 1);

SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Order_Items;