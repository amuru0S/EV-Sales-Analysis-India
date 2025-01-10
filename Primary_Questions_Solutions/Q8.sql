(select 
date_format(str_to_date(d.date, '%d-%b-%y'),'%M') as month,
d.fiscal_year,
sum(electric_vehicles_sold) as total_sales
from dim_date d
left join electric_vehicle_sales_by_state s on d.date = s.date
group by d.date, d.fiscal_year
order by total_sales desc
limit 1
)
union all
(
select 
date_format(str_to_date(d.date, '%d-%b-%y'),'%M') as month,
d.fiscal_year,
sum(electric_vehicles_sold) as total_sales
from dim_date d
left join electric_vehicle_sales_by_state s on d.date = s.date
group by d.date, d.fiscal_year
order by total_sales asc
limit 1
)