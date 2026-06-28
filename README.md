# Superstore Sales Performance Analysis

## Project Overview
End-to-end data analysis project combining SQL and Tableau to investigate 
a retail company's profitability problem. The analysis identified the root 
cause of margin erosion in the Tables sub-category and produced 
data-backed recommendations to recover profitability.

**Tools Used:** MySQL | Tableau Public  
**Dataset:** Sample Superstore Dataset  
**Skills Demonstrated:** Exploratory Data Analysis | SQL Querying | 
Data Visualization | Business Insight Communication

---

## Dashboard
[View Live Dashboard on Tableau Public](https://public.tableau.com/views/SuperstoreSalesPerformance_17826711755270/SuperstoreSalesPerformance)

---

## Problem
Superstore recorded $2,297,200 in total revenue across 5,009 orders but 
only $286,397 in total profit — a thin 12.5% margin. Despite strong sales 
growth, profit was not growing proportionally. The business needed to 
understand what was eroding their margins.

---

## Approach
1. Built a Tableau dashboard to visualize performance across categories, 
   sub-categories, and time
2. Identified Tables sub-category as generating $206,966 in sales but a 
   net loss of $17,725
3. Used SQL to investigate the root cause — testing discount impact, 
   product-level losses, and order patterns

---

## Key Findings
- Tables is the third most discounted sub-category at 26.5% average discount
- Non-discounted Table orders generate $184 average profit per order
- Every discount level above 0% produces a loss on Table orders
- Discounted Table orders collectively lost $33,989
- Five worst performing Table products all carry 20%+ discounts

---

## Recommendation
Eliminate discounts on Tables entirely and replace with value-add 
retention strategies — free delivery, extended warranties, loyalty 
incentives — that preserve the $184 average profit per non-discounted order.

---

## SQL Queries
See [queries.sql](queries.sql) for all analysis queries used in this project.

---

## Results
| Metric | Value |
|--------|-------|
| Total Revenue | $2,297,200 |
| Total Profit | $286,397 |
| Profit Margin | 12.5% |
| Tables Net Loss | -$17,725 |
| Tables Sales | $206,966 |
| Non-Discounted Avg Profit | $184/order |
| Discounted Avg Profit | -$129/order |
