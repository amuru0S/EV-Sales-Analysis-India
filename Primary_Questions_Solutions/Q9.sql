with annual_sales as (
select 
state,
fiscal_year,
sum(electric_vehicles_sold) as annual_sales
from electric_vehicle_sales_by_state s
join dim_date d on s.date = d.date
group by state, fiscal_year
),
first_last_year_sales as (
select 
state,
min(fiscal_year) as first_year,
max(fiscal_year) as last_year,
min(annual_sales) as first_year_sales,
max(annual_sales) as last_year_sales
from annual_sales 
group by state
),
cagr_calc as (
select 
state,
first_year,
last_year,
first_year_sales,
last_year_sales,
pow(last_year_sales / first_year_sales , 1.0 / (last_year-first_year))-1 as cagr
from first_last_year_sales
),
top_10_states as (
select
state,
sum(electric_vehicles_sold) / sum(total_vehicles_sold) as pen_rate
from electric_vehicle_sales_by_state
group by state
order by pen_rate desc
limit 10
)
select
s.state,
f.last_year_sales * round(POWER(1 + c.cagr, 2030 - f.last_year), 1) as projected_sales_2030
from top_10_states s 
left join cagr_calc c on s.state = c.state
left join first_last_year_sales f on c.state = f.state
order by projected_sales_2030 desc;
