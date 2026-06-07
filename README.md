# Superstore Sales Analysis — SQL Project

   Overview:
Exploratory SQL analysis of the Kaggle Superstore dataset — 9,994 orders 
across US regions, covering sales, profit, discounts, and customer behavior.

Tool: PostgreSQL 17 + DBeaver  
Dataset: [Kaggle Superstore](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)


   Business Questions & Findings:

| Question | Finding |
|---|---|
| Which region sells the most?             | West — highest total sales |
| Most vs least profitable category?       | Technology best, Furniture worst despite high sales |
| Top customer by spending?                | Sean Miller at #1 |
| How many products never got discounted?  | 197 out of ~1,800 products |
| Which states cross $50k in sales?        | Multiple states — California leads |

  Concepts Applied
- Aggregate functions (SUM, AVG, MAX)
- GROUP BY + HAVING
- Subqueries in WHERE clause
- IN / NOT IN with subqueries
- Correlated subqueries


  Files:
- `superstore_analysis.sql` — 7 queries with comments

   About:
Built by **Bisma Syed** — CS student and aspiring Data Analyst   
[GitHub](https://github.com/bismasyed-s) 
