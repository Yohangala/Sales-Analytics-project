-- KPI 1: Total Revenue
SELECT 
    ROUND(SUM(sales), 2) AS total_revenue
FROM orders;
-- KPI 2: Average Order Value
SELECT 
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM orders;
-- KPI 3: Monthly Sales Trend
SELECT
    order_year,
    order_month,
    ROUND(SUM(sales), 2) AS monthly_sales
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
-- KPI 4: Region-wise Sales
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;
