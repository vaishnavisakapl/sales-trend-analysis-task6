# sales-trend-analysis-task6
SQL script for sales trend analysis (monthly revenue &amp; order volume).
# Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze monthly revenue and order volume from sales data using SQL aggregation functions.

---

## 🛠 Tools Used
- PostgreSQL (compatible with MySQL / SQLite)

---

## 📂 Dataset
**Table Name:** `online_sales`

**Columns:**
- `order_id` — Unique order identifier
- `order_date` — Date of order
- `amount` — Order revenue amount
- `product_id` — Product identifier

Sample dataset file: `online_sales.csv`

---

## 📑 Steps Performed
1. Created `online_sales` table in PostgreSQL.
2. Inserted sample sales data for the year 2024.
3. Used `EXTRACT(MONTH FROM order_date)` to get the month.
4. Grouped results by **year** and **month**.
5. Calculated **total revenue** with `SUM(amount)`.
6. Calculated **order volume** with `COUNT(DISTINCT order_id)`.
7. Sorted results by **year** and **month**.
8. Filtered results for specific time periods using `WHERE`.

---

## 💻 SQL Query
```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY year, month
ORDER BY year, month;
