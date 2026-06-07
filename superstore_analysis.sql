
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
