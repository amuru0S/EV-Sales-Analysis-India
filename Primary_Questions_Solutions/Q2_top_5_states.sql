select
state,
(sum(s.electric_vehicles_sold)/sum(s.total_vehicles_sold))*100 as pen_rate
from electric_vehicle_sales_by_state s
left join dim_date d on s.date = d.date
group by state
order by pen_rate desc
limit 5;

