with TopMakers as (select
m.maker,
sum(m.electric_vehicles_sold) as total_sales
from electric_vehicle_sales_by_makers m
join dim_date d on m.date = d.date
where m.vehicle_category = '4-Wheelers' and d.fiscal_year in ('2022','2023','2024')
group by m.maker
order by total_sales desc
limit 5
),
MakersData as (select
m.maker,
d.fiscal_Year,
d.quarter,
sum(m.electric_vehicles_sold) as total_ev_sales
from electric_vehicle_sales_by_makers m
join dim_date d on m.date = d.date
group by m.maker, d.fiscal_Year, d.quarter
order by d.fiscal_Year, d.quarter asc
)
select 
tm.maker,
md.fiscal_year,
md.quarter,
md.total_ev_sales 
from MakersData md 
join TopMakers tm on tm.maker = md.maker
order by md.fiscal_year, md.quarter asc , md.total_ev_sales desc
limit 5;

