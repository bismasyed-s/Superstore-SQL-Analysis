# Superstore Sales Analysis — SQL Project

   Overview:
Exploratory SQL analysis of the Kaggle Superstore dataset — 9,994 orders 
across US regions, covering sales, profit, discounts, and customer behavior.

Tool: PostgreSQL 17 + DBeaver  
Dataset: [Kaggle Superstore](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)


   Business Questions & Findings:

| Query no. | Question | Finding |
|---|---|---|
| 1 | Which customers spent above average? | 762 customers |
| 2 | Which products were never discounted? | 194 products |
| 3 | Which orders beat their regional average? | Correlated subquery |
| 4 | Sales by region | West leads |
| 5 | Profit by category | Technology most profitable |
| 6 | Top 5 customers | Sean Miller #1 |
| 7 | States above $50k | California leads |
| 8 | Rank all orders by sales | Highest: $22,638 |
| 9 | Rank within each region | 4 regions ranked independently |
| 10 | Top 3 customers per region | 12 customers total |
| 11 | Running total of sales | Cumulative from 2014 |
| 12 | Sales vs previous order | Day-over-day swings |
| 13 | Row number by sales | Unique ranking, no ties |
| 14 | Sales vs next order | Forward comparison via LEAD() |

  Concepts Applied
- Aggregate functions (SUM, AVG, MAX)
- GROUP BY + HAVING
- Subqueries in WHERE clause
- IN / NOT IN with subqueries
- Correlated subqueries
-  Window Functions (RANK, DENSE_RANK, ROW_NUMBER, LAG, LEAD, SUM OVER)

  Files:
- `superstore_analysis.sql` — 7 queries with comments

   About:
Built by **Bisma Syed** — CS student and aspiring Data Analyst   
[GitHub](https://github.com/bismasyed-s) 
