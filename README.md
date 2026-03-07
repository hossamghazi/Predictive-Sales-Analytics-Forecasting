# Predictive-Sales-Analytics-Forecasting
1. Predictive Sales Analysis and Forecasting

1.1 Project Overview

This project analyzes historical sales data to extract key insights and forecast future sales performance. The goal is to help businesses make data-driven decisions and optimize revenue.

Tools and Technologies Used
	1.	Data Cleaning and Preparation: Python
	2.	KPI Analysis: SQL
	3.	Forecasting Models: Python (Prophet, ARIMA/SARIMA)
	4.	Dashboard and Visualization: Power BI

Data Description
	•	Dataset Source: Company Sales Dataset
	•	Number of Records: 10,000 orders
	•	Key Columns: Order Date, Product, Category, Region, Country, Units Sold, Revenue, Profit, Sales Channel

⸻

1.2 Data Preparation
	1.	Cleaned the data using Python.
	2.	Handled missing values and duplicates.
	3.	Corrected inconsistent data formats such as dates and currencies.
	4.	Created features for forecasting such as time-based aggregations.

Libraries Used: Pandas, NumPy, Matplotlib, Seaborn

⸻

1.3 KPI Analysis

Below are the key performance questions:
	1.	What is the total revenue generated during the entire period of the dataset?
	2.	What is the total profit generated from all sales transactions?
	3.	What is the total number of units sold across all products?
	4.	Which region generates the highest total revenue?
	5.	Which countries generate the highest revenue?
	6.	Which category generates the highest total revenue?
	7.	How does sales performance differ between Online and Offline sales channels?
	8.	What is the average revenue per order (Average Order Value)?
	9.	What are the top 5 highest revenue transactions?
	10.	Calculate the sales trend by year.
	11.	What are the top 3 selling products in each region?
	12.	What is the cumulative revenue over time (running total revenue by order date)?
	13.	What percentage of total orders were shipped on the same date?
	14.	What is the average time for orders to get shipped after an order is placed?

⸻

1.4 Forecasting
	1.	Forecasting was performed using Prophet to capture trends and seasonality.
	2.	ARIMA/SARIMA models were used to analyze short-term patterns and seasonal components.
	3.	Evaluation metrics used include MAE, RMSE, and MAPE.
	4.	Forecast results are to be added after model execution.

⸻

1.5 Dashboard and Visualization
	1.	Power BI dashboards were created to visualize the KPIs and forecast results.
	2.	Dashboard features include:
	1.	Revenue by region, country, and category
	2.	Sales channel comparison (Online vs Offline)
	3.	Top-selling products per region
	4.	Monthly and cumulative sales trends
	5.	Forecasted revenue visualization

⸻

1.6 Key Insights
	1.	Europe generates the highest sales revenue, while North America generates the lowest.
	2.	Taiwan generates the highest revenue, whereas Kazakhstan generates the lowest.
	3.	Household, Office Supplies, and Cosmetics generate the highest revenue, while Fruits generate the lowest.
	4.	Online and Offline sales are nearly equal, indicating both channels are important.
	5.	The peak sales year was 2015; the lowest sales year was 2017.
	6.	Office Supplies and Household items consistently appear among the top 3 products in all regions.
	7.	Only 181 orders out of 10,000 (1.8%) were shipped on the same day.
	8.	Average shipping time is 25 days.

⸻

1.7 Recommendations
	1.	Focus marketing, promotions, and inventory on Europe and Taiwan.
	2.	Maintain sufficient stock for Household, Office Supplies, and Cosmetics.
	3.	Consider strategies to increase sales of Fruits.
	4.	Support both Online and Offline sales channels equally.
	5.	Improve shipping to reduce average delivery time and increase same-day orders.
	6.	Keep top-selling products like Office Supplies and Household items well-stocked in all regions.

⸻

1.8 Conclusion

This project demonstrates the process of sales data analysis, forecasting, and insights generation. The insights and recommendations provide guidance to optimize revenue and improve operations.
