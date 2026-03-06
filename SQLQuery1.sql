select *
from salesAnalysis
exec sp_rename 'salesAnalysis.item_type','category','COLUMN';

--#1-What is the total revenue generated during the entire period of the dataset?
select round(sum(total_revenue),2) as 'Total Revene'
from salesAnalysis

--#2-What is the total profit generated from all sales transactions?
select round(sum(total_profit),2) as proit
from salesAnalysis

--#3-What is the total number of units sold across all products?
select sum(units_sold) as 'Total Number'
from salesAnalysis

--#4-Which region generates the highest total revenue?
select region,round(sum(total_revenue),2) as total_revenue
from salesAnalysis
group by region
order by total_revenue desc

--#5-Which countries generate the highest revenue?
select country,round(sum(total_revenue),2) as total_revenue
from salesAnalysis
group by country
order by total_revenue desc

--#6-Which category generate the highest total revenue?
with cte as(
select category,sum(total_revenue) as revenue,
rank() over(order by sum(total_revenue)desc ) as rnk
from salesAnalysis
group by category
)
select category ,revenue,rnk
from cte

--#7-How does sales performance differ between Online and Offline sales channels?
select sales_channel,sum(total_revenue) as revenue
from salesAnalysis
GROUP BY sales_channel

--#8-What is the average revenue per order (Average Order Value)?
select avg(total_revenue) as avg_value
from salesAnalysis

--#9-What are the top 5 highest revenue transactions?
with cte as(
select top 5 order_id ,sum(total_revenue) as revenue,
row_number() over(order by sum(total_revenue) desc) rn
from salesAnalysis
group by order_id
)
select order_id,revenue,rn
from cte

--#10-Calculate the sales trend by the year?
select year(order_date) as year,
round(sum(total_revenue),2) as revenue
from salesAnalysis
group by year(order_date)
order by year

--#11-top 3 selling product in each region
with cte as(
select region,category,sum(total_revenue) as revenue,
ROW_NUMBER() over(partition by region order by sum(total_revenue)desc) rn
from salesAnalysis
group by region,category
)
select region ,category,rn
from cte
where rn <=3

--#12-What is the cumulative revenue over time(running total revenue by order date)?
select new_date,revenue,
sum(revenue) over(order by new_date) as running_sales,
sum(revenue) over(partition by year(new_date) order by new_date) as running_sales_yearly
from(
select DATETRUNC(month,order_date) as new_date,
round(sum(total_revenue),2) as revenue
from salesAnalysis
group by DATETRUNC(month,order_date)
)t

--#13 What percentage of total orders were shipped on the same date?
select count(*) as total_orders,
sum(case when order_date = ship_date then 1 else 0 end)as shipedSameOrder,
round(cast(sum(case when order_date = ship_date then 1 else 0 end)as decimal(10,2))
/count(*) *100,2) as pct
from salesAnalysis

--#14 What is the average time for orders to get shipped after order is placed?
select avg(DATEDIFF(day,order_date,ship_date))as avg_time
from salesAnalysis



