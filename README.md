📌 Objective

This task demonstrates how to modularize and reuse SQL logic using **stored procedures** and **user-defined functions** in the `e_commerce_system` database.

---

✅ What Was Created

🧾 Stored Procedures

1. `GetOrdersByCustomer(cust_id)`  
   → Returns order details for a specific customer.

2. `AddCustomer(name, email, address)`  
   → Inserts a new customer into the database.

3. `GetOrderDetails(order_id)`  
   → Returns all item details for a specific order.

4. `CheckProductStock(product_id)`  
   → Returns stock quantity of a product.

---

📐 SQL Functions

1. `TotalSpentByCustomer(cust_id)`  
   → Returns total amount spent by a customer.

2. `OrderCountByCustomer(cust_id)`  
   → Returns number of orders placed by a customer.

3. `MaxProductPrice()`  
   → Returns the highest product price in inventory.

4. `TotalItemsInOrder(order_id)`  
   → Returns total quantity of items in a specific order.

---

🧠 Key Concepts Practiced

- `CREATE PROCEDURE` with `IN` parameters  
- `CREATE FUNCTION` returning scalar values  
- `COALESCE()` to avoid NULL results  
- Using `DELIMITER` to wrap procedures and functions  
- Modular, reusable SQL design  

---

📂 Files Included

| File Name           | Description                                 |
|---------------------|---------------------------------------------|
| `task8_extended.sql`| Complete procedures and functions SQL file  |
| `README.md`         | This documentation file                     |

---

🛠 Tools Used

- MySQL Workbench  
- GitHub  
- `e_commerce_system` database schema


👨‍💻 Author

**Ravi Kumar Chittiboyina**  
B.Tech 3rd Year — Sri Krishnadevaraya University  
📧 Email: chittiboyinaravikumaryadav555@gmail.com
