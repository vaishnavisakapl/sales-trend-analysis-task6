-- online_sales
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount NUMERIC(10,2),
    product_id VARCHAR(10)
);
-- Insert data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2024-01-05', 120.50, 'P001'),
(102, '2024-01-15', 250.00, 'P002'),
(103, '2024-02-10', 75.00, 'P001'),
(104, '2024-02-12', 150.00, 'P003'),
(105, '2024-03-02', 300.00, 'P004'),
(106, '2024-03-05', 180.00, 'P002'),
(107, '2024-04-15', 220.00, 'P003'),
(108, '2024-04-20', 90.00, 'P001'),
(109, '2024-05-01', 450.00, 'P004'),
(110, '2024-05-05', 120.00, 'P002'),
(111, '2024-06-11', 210.00, 'P003'),
(112, '2024-06-25', 340.00, 'P001'),
(113, '2024-07-02', 275.00, 'P002'),
(114, '2024-07-09', 95.00, 'P004'),
(115, '2024-08-10', 150.00, 'P003'),
(116, '2024-08-15', 130.00, 'P001'),
(117, '2024-09-01', 210.00, 'P002'),
(118, '2024-09-12', 180.00, 'P003'),
(119, '2024-10-05', 500.00, 'P004'),
(120, '2024-10-18', 220.00, 'P001');

select * from online_sales;
-- Aggregation query: Monthly Revenue & Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
