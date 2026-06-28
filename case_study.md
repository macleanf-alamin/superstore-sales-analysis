# Superstore Sales Performance — Case Study

## Introduction

Superstore is a retail company dealing in three product categories — 
Furniture, Technology, and Office Supplies. Despite recording strong 
sales growth over the years, the company's profit figures told a 
different story, raising concerns about what was eroding their margins.

I was tasked with investigating why the company was generating high 
sales volumes without a corresponding growth in profitability. Using 
Tableau, I analyzed the company's total revenue, profit, and order 
data across all product categories and sub-categories to identify 
where the problem was concentrated. The analysis singled out the 
Tables sub-category as the primary concern — $206,966 in sales but 
a net loss of $17,725.

I then used SQL to dig deeper into the root cause, moving beyond 
surface-level numbers to understand what was specifically driving 
the loss. The investigation not only identified the problem but 
produced a data-backed recommendation for how the company can 
recover profitability in that segment.

---

## Problems

The Superstore dashboard revealed an immediate disconnect between 
sales and profit at the company level — $2,297,200 in total revenue 
against only $286,397 in total profit, representing a thin 12.5% 
profit margin for a retail business operating across three categories.

Drilling into category performance exposed Furniture as the weakest 
link — the second highest selling category but generating only 
$18,451 in profit compared to Technology's $145,455. Further analysis 
at the sub-category level identified Tables as the core problem, 
generating $206,966 in sales while producing a net loss of $17,725.

**Three hypotheses were formed to explain the Tables loss:**
- Excessive discounting eroding margins
- Specific products within Tables driving the losses
- High quantity orders attracting bulk discounts that flip sales 
  into losses

---

## Analysis

SQL analysis on the Superstore dataset was used to test each 
hypothesis systematically.

### Discount Analysis

Tables ranked as the third most discounted sub-category store-wide 
at an average discount of 26.5%. When Table orders were segmented 
into discounted versus non-discounted groups, the findings were 
decisive:

| Group | Total Orders | Avg Discount | Total Profit | Avg Profit/Order |
|-------|-------------|--------------|--------------|------------------|
| No Discount | 75 | 0% | $13,818 | $184 |
| Discounted | 263 | 34% | -$33,989 | -$129 |

Further segmentation by discount band confirmed there is no safe 
discount level for Tables:

| Discount Band | Total Orders | Avg Discount | Total Profit | Avg Profit/Order |
|---------------|-------------|--------------|--------------|------------------|
| 0% | 75 | 0% | $13,818 | $184 |
| 11-20% | 75 | 20% | -$297 | -$3.95 |
| 21-30% | 55 | 30% | -$3,700 | -$67 |
| 31-40% | 77 | 40% | -$16,358 | -$212 |
| Above 40% | 56 | 49% | -$13,635 | -$243 |

Even the lowest discount band (11-20%) produces a loss. Discounting 
is the primary and definitive driver of Tables' unprofitability.

### Product Level Analysis

The five worst performing Table products all carried discounts above 
20%, collectively losing over $9,000:

| Product | Orders | Avg Discount | Total Sales | Total Profit |
|---------|--------|--------------|-------------|--------------|
| Chromcraft Bull-Nose Wood Oval Conference Tables | 5 | 28% | $9,917 | -$2,876 |
| Bush Advantage Collection Racetrack Conference Table | 8 | 37% | $10,817 | -$2,749 |
| BoxOffice By Design Rectangular Meeting Room Tables | 4 | 49% | $1,925 | -$1,310 |
| Balt Solid Wood Round Tables | 4 | 20% | $6,518 | -$1,201 |
| Riverside Furniture Oval Coffee Table | 5 | 30% | $4,446 | -$1,147 |

---

## Solutions

**Primary Recommendation:** Eliminate discounts on Tables entirely.

The data shows Tables is a profitable product at full price — 75 
non-discounted orders generated $184 average profit each. Discounting 
is not driving sales volume; it is purely destroying margin.

**Alternative customer retention strategies that preserve margin:**

- **Free or subsidized delivery** on Table purchases — addresses 
  the high shipping cost concern without cutting the product price
- **Extended warranty offerings** on Table products — adds perceived 
  value without reducing revenue
- **Loyalty incentives** for repeat furniture purchases — builds 
  customer retention without discounting

These alternatives preserve the $184 average profit per order that 
non-discounted Table sales already demonstrate is achievable.

---

## Conclusion

The Superstore profitability problem is not a sales problem — the 
company is generating $2.3M in revenue across 5,009 orders. It is 
a margin management problem concentrated in specific sub-categories, 
primarily Tables.

The root cause is clear and data-backed: a 26.5% average discount 
rate on a high-cost, high-weight product category is converting 
profitable sales into losses. No discount level above 0% produces 
a profitable Table order. The solution does not require a complex 
operational overhaul — it requires a pricing policy change on one 
sub-category.

---

## Next Steps

| Priority | Action | Timeline |
|----------|--------|----------|
| Immediate | Suspend all discounts on Tables and monitor profit per order | Week 1 |
| Month 1 | Implement free delivery and extended warranty as customer incentives | Month 1 |
| Month 2 | Re-run discount band analysis to measure profit recovery | Month 2 |
| Quarter 2 | Extend analysis to Bookcases and Supplies sub-categories | Q2 |
| Ongoing | Build monthly profit margin monitoring dashboard | Ongoing |

---

## Dashboard

[View Live Dashboard on Tableau Public](https://public.tableau.com/views/SuperstoreSalesPerformance_17826711755270/SuperstoreSalesPerformance)
