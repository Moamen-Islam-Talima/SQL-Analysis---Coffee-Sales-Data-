SELECT * FROM cleaned_data;

/*
📌 Context:
Based on the dataset, the analyst (Me) observed that the week starts on Monday,
which strongly suggests that these sales belong to a coffee shop located in Europe.

From this assumption, the seasonal classification was applied
(Spring, Summer, Autumn, Winter), and the local time context
(hour of the day) was also considered in the analysis.
*/

=============================================
-- Q1: How much does each drink contribute to total revenue?
-- Q1.1: What is the revenue per drink?
-- Q1.2: Which are the Top 3 drinks by revenue?
-- Q1.3: Are the drinks classified as hot or cold?

SELECT 
    coffee_name,
    ROUND(SUM(money), 2) AS total_revenue,
    ROUND(100.0 * SUM(money) / (SELECT SUM(money) FROM cleaned_data), 2) AS revenue_percentage
FROM cleaned_data
GROUP BY coffee_name
ORDER BY total_revenue DESC;

=============================================
-- Q2: What is the daily average sales per day?

SELECT 
    ROUND(AVG(daily_total), 2) AS avg_daily_spending
FROM (
    SELECT 
        Date,
        SUM(money) AS daily_total
    FROM cleaned_data
    GROUP BY Date
) AS daily_sales;

=============================================
-- Q3: How many products exist in each price category (Low, Medium, High)?
-- Q3.1: How many sales happened in each price category?

-- Product count by category
SELECT 
    price_category,
    COUNT(DISTINCT coffee_name) AS product_count
FROM cleaned_data
GROUP BY price_category;

-- Sales count by category
SELECT 
    price_category,
    COUNT(*) AS sales_count
FROM cleaned_data
GROUP BY price_category
ORDER BY sales_count DESC;

=============================================
-- Q4: Which months (or seasons) drive the most sales?

/*
📌 Meteorological Seasons (Europe)

🌸 Spring  → Months 3, 4, 5   (March, April, May)
☀️ Summer  → Months 6, 7, 8   (June, July, August)
🍂 Autumn  → Months 9, 10, 11 (September, October, November)
❄️ Winter  → Months 12, 1, 2  (December, January, February)
*/

-- Month frequency
SELECT 
    Monthsort,
    Month_name,
    COUNT(*) AS month_count
FROM cleaned_data
GROUP BY Monthsort, Month_name
ORDER BY month_count DESC;

=============================================

-- Q5: How do sales differ between weekdays and weekends?
-- Q5.2: What are the peak sales hours during the day (ranked highest to lowest)?

-- Weekend vs Weekday sales
SELECT
    CASE 
        WHEN Weekday IN ('Sat', 'Sun') THEN 'Weekend'
        ELSE 'Weekday'
    END AS Day_Type,
    COUNT(*) AS total_sales,
    SUM(money) AS total_revenue
FROM cleaned_data
GROUP BY 
    CASE 
        WHEN Weekday IN ('Sat', 'Sun') THEN 'Weekend'
        ELSE 'Weekday'
    END
ORDER BY total_revenue DESC;

-- Peak sales hours
SELECT
    hour_of_day,
    COUNT(*) AS total_sales,
    SUM(money) AS total_revenue
FROM cleaned_data
GROUP BY hour_of_day
ORDER BY total_sales DESC;
===============================================

/*📊 Recommendations

Peak Hours & Staffing
Focus on 9:00–12:00 AM with more staff to reduce waiting time and improve service.

Seasonal Inventory Planning
Sales peak in Spring, Autumn, and Winter → prepare extra stock of best-selling products.

Profitable Products
Invest more in top-selling drinks with stronger marketing and more variety.

Weak Products
Remove low-performing items or re-market them to high-end customers.

Payment Methods
Add diverse payment options and promote the ones linked to higher spending.

Weekdays vs Weekends

Weekdays → stronger inventory planning.

Weekends → use promotions to boost sales.
*\
