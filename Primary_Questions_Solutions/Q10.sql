select 
vehicle_category,
fiscal_year,
case when vehicle_category = '2-Wheelers' then sum(electric_vehicles_sold)*85000
	when vehicle_category = '4-Wheelers' then sum(electric_vehicles_sold)*1500000
else null
end as two_four_ev_rev
from electric_vehicle_sales_by_state s
left join dim_date d on s.date = d.date
group by vehicle_category, fiscal_year
order by vehicle_category, fiscal_year






