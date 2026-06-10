
   Superstore Sales Analysis
   Dataset: Kaggle Superstore (9,994 rows, 21 cols)
   Tool: PostgreSQL 17
   Author: Bisma Syed

   Query 1: Customers who spent more than average order value
SELECT "Customer Name", SUM("Sales") AS total_spending
FROM superstore
GROUP BY "Customer Name"
HAVING SUM("Sales") > (
    SELECT AVG("Sales") FROM superstore
);

  Query 2: Products that were never discounted
SELECT DISTINCT "Product Name"
FROM superstore
WHERE "Product ID" IN (
    SELECT "Product ID"
    FROM superstore
    GROUP BY "Product ID"
    HAVING MAX("Discount") = 0
);

   Query 3: Orders above their regional average sales (correlated subquery)
SELECT "Order ID", "Region", "Sales"
FROM superstore s1
WHERE "Sales" > (
    SELECT AVG("Sales")
    FROM superstore s2
    WHERE s2."Region" = s1."Region"
);

   Query 4: Total sales by region
SELECT "Region", SUM("Sales") AS total_sales
FROM superstore
GROUP BY "Region"
ORDER BY total_sales DESC;

   Query 5: Profit by category
SELECT "Category", SUM("Profit") AS total_profit
FROM superstore
GROUP BY "Category"
ORDER BY total_profit DESC;

   Query 6: Top 5 customers by sales
SELECT "Customer Name", SUM("Sales") AS total_sales
FROM superstore
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 5;

   Query 7: States with sales above $50k
SELECT "State", SUM("Sales") AS total_sales
FROM superstore
GROUP BY "State"
HAVING SUM("Sales") > 50000
ORDER BY total_sales DESC;


    WINDOW FUNCTIONS

   Query 8: Rank all orders by sales (global)
SELECT "Order ID", "Sales",
RANK() OVER (ORDER BY "Sales" DESC) AS sales_rank
FROM superstore;

   Query 9: Rank customers by sales within each region
SELECT "Customer Name", "Region", "Sales",
RANK() OVER (PARTITION BY "Region" ORDER BY "Sales" DESC) AS region_rank
FROM superstore;

    Query 10: Top 3 customers per region
SELECT "Customer Name", "Region", "Sales", region_rank
FROM (
    SELECT "Customer Name", "Region", "Sales",
    RANK() OVER (PARTITION BY "Region" ORDER BY "Sales" DESC) AS region_rank
    FROM superstore
) AS ranked
WHERE region_rank <= 3;

   Query 11: Running total of sales over time
SELECT "Order Date", "Sales",
SUM("Sales") OVER (ORDER BY "Order Date") AS running_total
FROM superstore;

    Query 12: Sales vs previous order + difference
SELECT "Order Date", "Sales",
LAG("Sales") OVER (ORDER BY "Order Date") AS previous_sales,
"Sales" - LAG("Sales") OVER (ORDER BY "Order Date") AS difference
FROM superstore;

    Query 13: Row number by sales descending
SELECT "Order ID", "Sales",
ROW_NUMBER() OVER (ORDER BY "Sales" DESC) AS row_num
FROM superstore;

    Query 14: Sales vs next order
SELECT "Order ID", "Sales",
LEAD("Sales") OVER (ORDER BY "Sales") AS next_order
FROM superstore;

