create database e_commerce_system;
use e_commerce_system;
create table customers(customer_id int auto_increment primary key,name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(255));
    CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers (name, email, address) VALUES
('Ravi Kumar', 'ravi.kumar@example.com', 'Andhra Pradesh, India'),
('Kasaiah', 'kasaiah@example.com', 'Hyderabad, India'),
('Praveen', 'praveen@example.com', 'Bangalore, India'),
('Kamal', 'kamal@example.com', 'Chennai, India'),
('Vamsi', 'vamsi@example.com', 'Vijayawada, India'),
('Omkar', 'omkar@example.com', 'Pune, India'),
('Manvi', 'manvi@example.com', 'Delhi, India');


INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Books'),
('Fashion'),
('Home Appliances');

INSERT INTO Products (product_name, price, stock, category_id) VALUES
('Smartphone', 18000.00, 25, 1),
('Laptop', 62000.00, 10, 1),
('C Programming Book', 400.00, 50, 2),
('Python for Beginners', 550.00, 40, 2),
('T-shirt - Large', 350.00, 100, 3),
('Washing Machine', 15000.00, 8, 4),
('Microwave Oven', 8500.00, 12, 4);
select * from Products;
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-06-21', 18400.00),
(2, '2025-06-21', 9050.00),
(3, '2025-06-22', 555.00),
(4, '2025-06-22', 62000.00),
(5, '2025-06-23', 15400.00),
(6, '2025-06-23', 400.00),
(7, '2025-06-23', 8950.00); 
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 18000.00),
(1, 3, 1, 400.00),
(2, 5, 2, 700.00), 
(2, 7, 1, 8350.00), 
(3, 4, 1, 550.00),
(4, 2, 1, 62000.00),
(5, 6, 1, 15000.00),
(5, 3, 1, 400.00),
(6, 3, 1, 400.00),
(7, 7, 1, 8500.00),
(7, 5, 1, 450.00);
