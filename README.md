# elevatelabsproject1
internship
# 🛍️ E-Commerce Database Schema — Task 1 (SQL Developer Internship)

## 📌 Domain: E-Commerce System

This project demonstrates the design and creation of a relational database schema for an online e-commerce platform. It includes essential tables to manage customers, products, categories, orders, and ordered items.

---

## 🧱 Database Tables

### 1. Customers
Stores customer personal details such as name, email, and address.

### 2. Categories
Stores product categories (e.g., Electronics, Fashion).

### 3. Products
Stores product information including price, stock, and category.

### 4. Orders
Tracks customer orders along with the total amount and date.

### 5. Order_Items
Junction table to manage multiple products per order with quantities and prices.

---

## 🔗 Relationships

- One **Customer** → Many **Orders**
- One **Order** → Many **Order_Items**
- One **Product** → Many **Order_Items**
- One **Category** → Many **Products**
- Many-to-Many between **Orders** and **Products** via **Order_Items**

---

## 📁 Files Included

| File | Description |
|------|-------------|
| `task1.sql` | Full SQL script to create tables and insert sample data |
| `erdiagram1.mwb` | MySQL Workbench ER Diagram (can export as PNG if needed) |
| `README.md` | Explanation of the project |

---

## 🛠 Tools Used

- MySQL Workbench
- GitHub
- ER Diagram Design (.mwb file)

---

## 🎯 Task Objectives Covered

- ✅ Schema Design
- ✅ Table Creation with Primary & Foreign Keys
- ✅ Insert Sample Data for Testing
- ✅ ER Diagram Creation
- ✅ Understanding Relationships
- ✅ Use of AUTO_INCREMENT, UNIQUE, NOT NULL, DEFAULT constraints

## 👨‍💻 Author

**Ravi Kumar Chittiboyina**  
B.Tech, 3rd Year — Sri Krishnadevaraya University  
Email: chittiboyinaravikumaryadav555@gmail.com  
