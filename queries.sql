-- Superstore Sales Analysis: Tables Sub-Category Investigation
-- Analyst: Maclean Al-amin
-- Tool: MySQL

-- ============================================
-- 1. AVERAGE DISCOUNT BY SUB-CATEGORY
-- ============================================
SELECT 
    `Sub-Category`,
    AVG(Discount) AS avg_discount
FROM sample_superstore
GROUP BY `Sub-Category`
ORDER BY avg_discount DESC;

-- ============================================
-- 2. AVERAGE SALES, DISCOUNT & PROFIT ON TABLES
-- ============================================
SELECT 
    `Sub-Category`,
    AVG(Discount) AS avg_discount,
    AVG(Sales) AS avg_sales,
    AVG(Sales) * (1 - AVG(Discount)) AS avg_sales_after_discount,
    AVG(Profit) AS avg_profit
FROM sample_superstore
WHERE `Sub-Category` = 'Tables'
GROUP BY `Sub-Category`;

-- ============================================
-- 3. DISCOUNTED VS NON-DISCOUNTED TABLE ORDERS
-- ============================================
SELECT 
    CASE 
        WHEN Discount = 0 THEN 'No Discount'
        ELSE 'Discounted'
    END AS discount_group,
    COUNT(*) AS total_orders,
    AVG(Discount) AS avg_discount,
    AVG(Sales) AS avg_sales,
    AVG(Profit) AS avg_profit,
    SUM(Profit) AS total_profit
FROM sample_superstore
WHERE `Sub-Category` = 'Tables'
GROUP BY discount_group;

-- ============================================
-- 4. PROFIT BY DISCOUNT BAND ON TABLES
-- ============================================
SELECT 
    CASE 
        WHEN Discount = 0 THEN '0%'
        WHEN Discount <= 0.10 THEN '1-10%'
        WHEN Discount <= 0.20 THEN '11-20%'
        WHEN Discount <= 0.30 THEN '21-30%'
        WHEN Discount <= 0.40 THEN '31-40%'
        ELSE 'Above 40%'
    END AS discount_band,
    COUNT(*) AS total_orders,
    AVG(Discount) AS avg_discount,
    SUM(Profit) AS total_profit,
    AVG(Profit) AS avg_profit
FROM sample_superstore
WHERE `Sub-Category` = 'Tables'
GROUP BY discount_band
ORDER BY avg_discount ASC;

-- ============================================
-- 5. WORST PERFORMING TABLE PRODUCTS
-- ============================================
SELECT 
    `Product Name`,
    COUNT(*) AS total_orders,
    AVG(Discount) AS avg_discount,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM sample_superstore
WHERE `Sub-Category` = 'Tables'
GROUP BY `Product Name`
ORDER BY total_profit ASC;
