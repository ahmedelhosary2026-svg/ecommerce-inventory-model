# Project 3: E-commerce Inventory & Systems Integration

## Overview
This project demonstrates inventory modeling and business systems integration logic for e-commerce. The mock data supports inventory decision-making and sales analytics.

## Data Model

### Table: `sales_transactions.csv`
- `transaction_id`
- `sku_id`
- `sale_date`
- `quantity_sold`
- `lead_time_days`

### Table: `inventory_levels.csv`
- `sku_id`
- `current_stock_units`
- `reorder_point`
- `cost_per_unit`

## Analysis Logic

### SQL Logic: Average Sales Velocity (per SKU, per week)
```sql
SELECT
  sku_id,
  AVG(quantity_sold) AS avg_sales_velocity_per_week
FROM sales_transactions
GROUP BY sku_id;
```

### Excel/Sheets EOQ & Reorder Logic
**Suggested Reorder Quantity (EOQ):**
- EOQ = SQRT((2 × Demand × Ordering Cost) ÷ Holding Cost)
  - Demand ≈ Sales Velocity × Lead Time
  - Ordering Cost: Estimated per reorder
  - Holding Cost: Estimated per unit per period

**Process:**
1. Calculate average sales velocity and average lead time per SKU.
2. Apply EOQ formula to determine optimal reorder quantities.
3. Compare `current_stock_units` with `reorder_point` and EOQ for restock recommendations.

## Usage Instructions
1. Load both CSVs into your preferred tool.
2. Use the SQL query for sales velocity analysis.
3. Apply the EOQ formula in Excel/Sheets for reorder planning.

## Portfolio Skills Validated
- Inventory analytics
- Systems integration logic (SQL + spreadsheet modeling)
- EOQ and stock optimization