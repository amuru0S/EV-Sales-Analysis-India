select
s.state,
d.fiscal_Year,
sum(s.electric_vehicles_sold) as ev_sales,
(sum(s.electric_vehicles_sold)/sum(s.total_vehicles_sold))*100 as pen_rate
from electric_vehicle_sales_by_state s
left join dim_date d on s.date = d.date
where s.state in ('Delhi','Karnataka') and d.fiscal_year = '2024'
group by s.state, d.fiscal_year
order by ev_sales asc, pen_rate asc