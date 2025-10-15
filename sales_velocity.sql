SELECT
  sku_id,
  AVG(quantity_sold) AS avg_sales_velocity_per_week
FROM sales_transactions
GROUP BY sku_id;