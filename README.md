# Superstore Sales Analysis — SQL Project

## Overview
Exploratory SQL analysis of the Kaggle Superstore dataset — 9,994 orders across US regions (2014–2017), uncovering sales trends, customer behavior, and profitability insights.

**Tool:** PostgreSQL 17 + DBeaver  
**Dataset:** [Kaggle Superstore](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)  
**Author:** Bisma Syed — CS Student & Aspiring Data Analyst

---

## Business Questions & Key Findings

| # | Question | Finding |
|---|----------|---------|
| 1 | Which customers spent above average? | 762 out of 793 customers exceeded average order value |
| 2 | Which products were never discounted? | 194 products sold at full price — potential pricing review needed |
| 3 | Which orders beat their regional average? | West region had the most above-average orders |
| 4 | What are total sales by region? | West leads at $725k, South lowest at $391k — 85% gap between regions |
| 5 | Which category is most profitable? | Technology: $145k profit, Office Supplies: $122k, Furniture: $18k |
| 6 | Who are the top 5 customers? | Sean Miller #1 at $25k total spend |
| 7 | Which states exceed $50k in sales? | California leads — major opportunity for regional focus |
| 8 | How do orders rank globally by sales? | Highest single order: $22,638 |
| 9 | How do customers rank within each region? | 4 regions ranked independently using window functions |
| 10 | Who are the top 3 customers per region? | 12 customers identified — useful for regional account management |
| 11 | What is the running total of sales over time? | Sales grew from $484k (2014) to $733k (2017) — 51% growth |
| 12 | How do daily sales compare to the previous day? | High day-over-day variance — seasonal spikes visible in Q4 |
| 13 | What is the unique rank of every order by sales? | ROW_NUMBER used to eliminate ties in ranking |
| 14 | How does each order compare to the next? | LEAD() used for forward-looking sales comparison |

  Concepts Applied
- Aggregate functions (SUM, AVG, MAX)
- GROUP BY + HAVING
- Subqueries in WHERE clause
- IN / NOT IN with subqueries
- Correlated subqueries
-  Window Functions (RANK, DENSE_RANK, ROW_NUMBER, LAG, LEAD, SUM OVER)


## Key Insights

- **Sales grew 51%** from 2014 to 2017 ($484k → $733k)
- **Technology is the most profitable category** — 8x more profitable than Furniture
- **West region dominates** with 30% of total sales
- **194 products never discounted** — potential to test discount strategy for slow movers
  
 ## Files:
- `superstore_analysis.sql` — 14 queries with comments and business context

 ##  About:
Built by **Bisma Syed** — CS student and aspiring Data Analyst   
[GitHub](https://github.com/bismasyed-s) 
