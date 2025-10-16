/*
=========================================================
 Adidas Retail Sales Analysis
=========================================================
 Author: Jeremiah Jacobs
 Description: 
    Comprehensive SQL exploration of Adidas retail sales 
    across multiple regions, sales methods, and product categories.

 Skills Demonstrated:
    - Data Cleaning and Transformation
    - Joins, Aggregations, and Window Functions
    - Profitability and Sales Trend Analysis
    - KPI Development and Regional Insights
    - Data Cleaning in SQL
=========================================================
*/

-- ==========================================
-- STEP 1: INITIAL TABLE SETUP AND CLEANUP
-- ==========================================

-- View original data
SELECT * 
FROM new_schema.`adidas sales`;

-- Rename table to remove spaces for easier querying
ALTER TABLE new_schema.`adidas sales`
RENAME TO adidas_sales;

-- Verify structure after rename
SELECT *
FROM adidas_sales;

-- Rename columns for SQL-friendly naming conventions
ALTER TABLE adidas_sales
RENAME COLUMN `Invoice Date` TO invoice_date,
RENAME COLUMN `Price per Unit` TO price_per_unit,
RENAME COLUMN `Units Sold` TO units_sold,
RENAME COLUMN `Total Sales` TO total_sales,
RENAME COLUMN `Operating Profit` TO operating_profit,
RENAME COLUMN `Sales Method` TO sales_method;

-- Confirm that date and text columns are clean
SELECT *
FROM adidas_sales
ORDER BY invoice_date;

-- ==========================================
-- STEP 2: KEY PERFORMANCE OVERVIEW (KPIs)
-- ==========================================

SELECT 
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT retailer) AS retailer_count,
    COUNT(DISTINCT state) AS states_covered,
    SUM(total_sales_num) AS total_revenue,
    SUM(operating_profit_num) AS total_profit,
    ROUND(SUM(operating_profit_num) / SUM(total_sales_num) * 100, 2) AS overall_profit_margin
FROM adidas_sales;

-- ==========================================
-- STEP 3: REGIONAL PERFORMANCE
-- ==========================================

-- Revenue and Profit by Region
SELECT 
    region,
    SUM(total_sales_num) AS total_revenue,
    SUM(operating_profit_num) AS total_profit,
    ROUND(SUM(operating_profit_num) / SUM(total_sales_num) * 100, 2) AS profit_margin
FROM adidas_sales
GROUP BY region
ORDER BY total_revenue DESC;

-- ==========================================
-- STEP 4: TOP STATES PERFORMANCE
-- ==========================================

-- Top 10 States by Revenue
SELECT 
    state,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num), 2) AS total_profit
FROM adidas_sales
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 10;

-- ==========================================
-- STEP 5: SALES CHANNEL PERFORMANCE
-- ==========================================

-- Compare Online, In-store, and Outlet methods
SELECT 
    sales_method,
    COUNT(*) AS transactions,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num), 2) AS total_profit,
    ROUND(AVG(operating_profit_num / total_sales_num * 100), 2) AS avg_profit_margin_pct
FROM adidas_sales
GROUP BY sales_method
ORDER BY total_revenue DESC;

-- ==========================================
-- STEP 6: PRODUCT CATEGORY INSIGHTS
-- ==========================================

-- Sales and Profit by Product Type
SELECT 
    product,
    SUM(units_sold) AS total_units_sold,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num), 2) AS total_profit
FROM adidas_sales
GROUP BY product
ORDER BY total_revenue DESC;

-- ==========================================
-- STEP 7: RETAILER PERFORMANCE
-- ==========================================

SELECT 
    retailer,
    COUNT(*) AS transactions,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num), 2) AS total_profit,
    ROUND(SUM(operating_profit_num) / SUM(total_sales_num) * 100, 2) AS profit_margin_pct
FROM adidas_sales
GROUP BY retailer
ORDER BY total_revenue DESC;

-- ==========================================
-- STEP 8: MONTHLY SALES TREND
-- ==========================================

SELECT 
    DATE_FORMAT(invoice_date, '%Y-%m') AS month,
    ROUND(SUM(total_sales_num), 2) AS monthly_revenue,
    ROUND(SUM(operating_profit_num), 2) AS monthly_profit
FROM adidas_sales
GROUP BY DATE_FORMAT(invoice_date, '%Y-%m')
ORDER BY month;

-- ==========================================
-- STEP 9: TOP CITIES BY PROFIT
-- ==========================================

SELECT 
    city,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num), 2) AS total_profit
FROM adidas_sales
GROUP BY city
ORDER BY total_profit DESC
LIMIT 10;

-- ==========================================
-- STEP 10: PRODUCT & REGION CROSS ANALYSIS
-- ==========================================

SELECT 
    product,
    region,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num), 2) AS total_profit,
    ROUND(SUM(operating_profit_num) / SUM(total_sales_num) * 100, 2) AS profit_margin_pct
FROM adidas_sales
GROUP BY product, region
ORDER BY profit_margin_pct DESC;

-- ==========================================
-- STEP 11: PROFIT MARGIN BY PRODUCT
-- ==========================================

SELECT 
    product,
    ROUND(SUM(total_sales_num), 2) AS total_revenue,
    ROUND(SUM(operating_profit_num) / SUM(total_sales_num) * 100, 2) AS profit_margin_pct
FROM adidas_sales
GROUP BY product
ORDER BY profit_margin_pct DESC;

-- ==========================================
-- STEP 12: CUMULATIVE SALES OVER TIME
-- ==========================================

SELECT 
    DATE_FORMAT(invoice_date, '%Y-%m') AS month,
    ROUND(SUM(total_sales_num) OVER (ORDER BY DATE_FORMAT(invoice_date, '%Y-%m')), 2) AS cumulative_sales
FROM adidas_sales;

-- ==========================================
-- END OF ANALYSIS
-- ==========================================
