# 🧾 SQL Developer Internship - Task 7: Creating Views

📌 Objective

This task focuses on creating and using SQL views to abstract, summarize, and control data access in the `e_commerce_system` database.

---

🧠 Views Created

1. customer_order_summary
   Summary of total orders and total spending per customer.

2. top_selling_products  
   Shows which products were sold most by quantity.

3. high_value_orders  
   Filters orders with amount greater than ₹10,000.

4. order_details_view 
   Detailed view combining orders, customers, products, and items.

5. limited_orders_view WITH CHECK OPTION
   Prevents updates that violate `total_amount < 20000`.

---

🛠 Key SQL Concepts Practiced

- `CREATE VIEW` with `SELECT` queries
- Using `JOIN` and `GROUP BY` in views
- Filtering data inside views (`WHERE`)
- Data security using `WITH CHECK OPTION`
- Reusability and abstraction via view definitions

---

📂 Files Included

| File Name     | Description                          |
|---------------|--------------------------------------|
| `task7.sql`   | SQL script with view creation        |
| `README.md`   | Project documentation for Task 7     |

---


👨‍💻 Author

Ravi Kumar Chittiboyina 
B.Tech 3rd Year — Sri Krishnadevaraya University  
📧 Email: chittiboyinaravikumaryadav555@gmail.com
