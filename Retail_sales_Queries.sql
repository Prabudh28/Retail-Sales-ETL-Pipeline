SELECT
    stock_code,
    description,
    SUM(quantity) AS total_quantity_sold
FROM
    transactions
GROUP BY
    stock_code,
    description
ORDER BY
    total_quantity_sold DESC
LIMIT 10;

SELECT
    TO_CHAR(invoice_date, 'YYYY-MM') AS sales_month,
    SUM(total_price) AS monthly_revenue
FROM
    transactions
GROUP BY
    sales_month
ORDER BY
    sales_month;


SELECT
    customer_id,
    SUM(total_price) AS total_spent
FROM
    transactions
GROUP BY
    customer_id
ORDER BY
    total_spent DESC
LIMIT 10;