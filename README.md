# Project Background

Adistar Retail Group is a national retail chain that exclusively sells Adidas footwear, apparel, and accessories. Founded in 2012, Adistar operates a network of brick-and-mortar stores across multiple U.S. regions and a growing direct-to-consumer e-commerce channel.

The company’s business model focuses on delivering a premium brand experience, optimizing inventory allocation across channels, and maximizing margin through targeted pricing and promotional strategies. Key business metrics tracked regularly include total revenue, operating profit, units sold, average selling price, and channel mix. This project thorougly analyzes and synthesizes this data in order to uncover critical insights that will improve Adistar's commercial success.

**Regional Sales Performance:** Compares total revenue, profit, and sales volume across U.S. regions and states to identify top- and underperforming markets.

**Sales Channel & Margin Analysis:** Evaluates online, in-store, and outlet performance to determine which channels drive the highest sales and profit margins.

**Product Category Performance:** Analyzes sales and profitability across footwear and apparel categories to uncover trends in customer demand and pricing effectiveness.

**Retailer & Operational Efficiency:** Reviews partner and store-level performance to assess contribution to overall revenue, profitability, and operational consistency.

The SQL queries used to inspect and clean the data for this analysis can be found here: [link].

An interactive Power BI dashboard used to report and explore sales trends can be found here: [link].


# Data Structure & Initial Checks

The company’s main database structure, as seen below, consists of four tables: adidas_sales, product_catalog, region_lookup, and retailer_info, with a total of approximately 9,000 records. These tables collectively capture sales transactions, product information, regional mapping, and retailer details.

![Entity Relationship Diagram](https://raw.githubusercontent.com/Jeremiah0175/Portfolio/main/Image%20portfolio1.png)

Prior to the beginning of this analysis, a variety of data quality checks and cleaning operations were conducted to ensure accuracy and consistency across all columns.You can view the full SQL scripts used for these cleaning steps here [SQL Cleaning & Preparation Queries](https://github.com/Jeremiah0175/Adidas-SQL-Analysis/blob/main/data_cleaning.sql)



# Executive Summary

This project provides a detailed analysis of Adistar, a U.S. retail chain exclusively selling Adidas products, using SQL and Power BI to uncover key sales and profitability drivers across two years of operations.

The analysis revealed total revenue of $90.6 million and operating profit of $33.4 million, resulting in an overall profit margin of 36.9 %. The findings help highlight the brand’s regional performance, channel efficiency, and top-performing product categories for strategic decision-making.

<p align="center">
  <a href="https://github.com/Jeremiah0175/Portfolio/blob/main/Adidas%20bi.pdf">
    <img src="https://raw.githubusercontent.com/Jeremiah0175/Portfolio/main/Adidas%20bi%20img.png" width="850">
  </a>
  <br>
  <em>Click the image to open the full Power BI dashboard (PDF)</em>
</p>

#### Sales Trend Analysis

Sales across 2020–2021 showed a steady upward trend, emphasizing brand strength and post-pandemic recovery.

Revenue Growth: Sales rose from roughly $42 M in 2020 to $48 M in 2021, reflecting a 14 % year-over-year increase.

Seasonal Peaks: Monthly analysis revealed major surges between June and August, aligning with mid-year campaigns and sports events.

Regional Distribution: The Western and Southeastern regions led total revenue, contributing over 45 % of all national sales.

Sales Channels:

Online generated the largest revenue share (~$38 M).

In-store sales achieved higher profit margins (≈ 42 %).

Outlet sales were the fastest-growing channel, showing potential for expansion.


#### Product Performance Analysis

Product insights revealed clear winners across both volume and profitability:

Men’s Street Footwear: Top-selling line with $21.4 M in total sales and $8.1 M in profit — strong performer across all regions.

Women’s Street Footwear: Second-highest revenue at $18.9 M, boosted by summer campaigns and outlet discounts.

Athletic Footwear: Maintained steady demand (≈ $16 M sales) with consistent profit margins.

Apparel: While representing a smaller share ($12.4 M sales), it offered the highest per-unit margin, ideal for promotional bundling.


# Recommendations

Based on the insights and findings above, we recommend the Adistar management team consider the following actions:

#### Strengthen Summer Sales Campaigns:
Revenue consistently peaks between June and August, driven by increased demand for footwear and apparel. Launch targeted mid-year marketing campaigns and limited-edition product releases to maximize seasonal sales opportunities.

#### Expand Outlet Store Presence:
Outlet sales demonstrated the highest profit margins due to lower operating costs. Opening new outlets in high-performing regions (West & Southeast) could further enhance overall profitability.

#### Prioritize Men’s Street Footwear Line:
As the top-performing product category with over $21M in sales, this line should be prioritized for inventory, marketing visibility, and geographic expansion to sustain strong growth momentum.

#### Boost Women’s Apparel and Footwear Promotions:
Women’s products showed high responsiveness to promotions. Implement bundle discounts and online-exclusive deals to increase repeat purchases and brand engagement.

#### Enhance Online Channel Experience:
With online sales contributing the largest revenue share (~$38M), improving digital touchpoints—such as personalized recommendations, fast checkout, and loyalty programs—will help retain digital-first consumers.
