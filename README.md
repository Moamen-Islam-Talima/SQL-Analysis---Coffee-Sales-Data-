# Data-Driven Strategy for Coffee Shop Performance

## Table of Contents
- [Overview](#overview)
- [Project Objectives](#project-objectives)
- [Dataset](#dataset)
- [Analysis Approach](#analysis-approach)
- [Key Insights](#key-insights)
- [Tools and Technologies](#tools-and-technologies)
- [Business Value](#business-value)
- [How to Use](#how-to-use)
- [License](#license)

---

## Overview
This repository presents a structured data analysis project designed to transform raw coffee shop sales data into actionable business insights. The project applies **SQL queries** to answer critical business questions, identify customer behavior patterns, and support data-driven decision-making.

The analysis highlights product performance, customer spending habits, seasonal demand, and operational efficiency opportunities. The final outcome is a strategy that enables the coffee shop to optimize staffing, inventory, and marketing while improving overall profitability.

---

## Project Objectives
- Analyze sales distribution across products, categories, and price levels.  
- Identify temporal patterns such as peak hours, weekdays vs weekends, and seasonal variations.  
- Assess revenue contribution by product and detect underperforming items.  
- Translate data insights into actionable business recommendations.  

---

## Dataset
- **Source**: Coffee shop transactional data.  
- **Records**: ~3,500 rows.  
- **Features**: 11 variables, including product, revenue, price category, date, season, and time.  
- **Assumptions**: Week starts on Monday (European market context). Seasonal classification follows meteorological standards.  

---

## Analysis Approach
The analysis is conducted through SQL queries organized into the following areas:

1. **Product Performance**  
   - Contribution of each drink to total revenue.  
   - Identification of the top three best-selling products.  
   - Classification of products as hot or cold.  

2. **Customer Spending**  
   - Calculation of average daily sales.  
   - Evaluation of sales distribution across low, medium, and high price categories.  

3. **Time and Seasonality**  
   - Monthly and seasonal sales performance.  
   - Comparison of weekday vs weekend sales.  
   - Identification of peak sales hours.  

4. **Recommendations**  
   - Operational improvements for staffing.  
   - Seasonal inventory planning.  
   - Promotion of high-performing products.  
   - Strategy for underperforming products.  
   - Payment method optimization.  

---

## Key Insights
- Sales peak between **09:00 and 12:00**.  
- Strongest performance occurs in **Spring, Autumn, and Winter**.  
- **High-priced drinks** contribute significantly to revenue.  
- Weekdays provide steady revenue, while weekends show distinct customer behavior.  
- Certain products underperform and require repositioning or removal.  
- Payment methods influence average customer spending.  

---

## Tools and Technologies
- **SQL**: Data querying and analysis.  
- **Jupyter Notebook**: Documentation and workflow structure.  
- **Python (optional)**: For visualization and complementary analysis.  

---

## Business Value
This project enables coffee shop management to:
- Align staffing with demand patterns.  
- Optimize inventory according to seasonal and daily trends.  
- Increase profitability by focusing on high-performing products.  
- Improve customer experience with faster service and flexible payment methods.  
- Design marketing strategies tailored to customer preferences and behaviors.  

---

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/coffee-shop-performance.git
