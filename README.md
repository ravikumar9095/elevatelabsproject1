📌 Objective

This task focuses on practicing `SELECT` queries in MySQL to retrieve and filter data from the `e_commerce_system` database. It demonstrates how to extract meaningful insights using filters, sorting, aliases, and basic grouping.

---

🧾 SQL Queries Included

🟢 Basic Retrieval & Filtering
```sql
SELECT * FROM Products;
SELECT product_name, price FROM Products;
SELECT * FROM Customers WHERE address LIKE '%India%' AND name LIKE 'R%';
SELECT * FROM Products WHERE price BETWEEN 500 AND 20000;
SELECT * FROM Orders ORDER BY total_amount DESC;
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 3;
````

🔵 Advanced Filtering & Querying

```sql
SELECT DISTINCT category_id FROM Products;
SELECT product_name AS Item, price AS Cost FROM Products;
SELECT * FROM Customers WHERE customer_id IN (1, 3, 5);
SELECT * FROM Customers WHERE customer_id NOT IN (2, 4);
SELECT * FROM Customers WHERE address IS NULL;
SELECT * FROM Customers WHERE address IS NOT NULL;
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 5 OFFSET 3;
```

🟣 Grouping and Aggregation

```sql
SELECT customer_id, COUNT(*) AS order_count
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 1;




🧠 Key SQL Concepts Practiced

* `SELECT *`, `SELECT column1, column2`
* `WHERE`, `AND`, `OR`
* `LIKE`, `IN`, `NOT IN`, `BETWEEN`
* `IS NULL`, `IS NOT NULL`
* `ORDER BY`, `DESC`, `ASC`
* `LIMIT`, `OFFSET`
* `DISTINCT` values
* Aliasing using `AS`
* `GROUP BY`, `HAVING`



📂 Files Included

| File Name   | Description                              |
| ----------- | ---------------------------------------- |
| `task3.sql` | SQL script containing all SELECT queries |
| `README.md` | Project documentation (this file)        |


🛠 Tools Used

* MySQL Workbench
* GitHub
* `e_commerce_system` database from Task 1


👨‍💻 Author

Ravi Kumar Chittiboyina
B.Tech 3rd Year — Sri Krishnadevaraya University
📧 Email: [chittiboyinaravikumaryadav555@gmail.com](mailto:chittiboyinaravikumaryadav555@gmail.com)
