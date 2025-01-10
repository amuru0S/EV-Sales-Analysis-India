select 
IV.state,
round(((power(FinalVal / InitialVal ,1 / 2.0))-1)*100,2) as CAGR
from
(select
state,
sum(total_vehicles_sold) as InitialVal
from electric_vehicle_sales_by_state s
left join dim_date d on s.date = d.date
where fiscal_year = '2022'
group by state
) as IV
inner join
(select
state,
sum(total_vehicles_sold) as FinalVal
from electric_vehicle_sales_by_state s
left join dim_date d on s.date = d.date
where fiscal_year = '2024'
group by state
) as FV
on IV.state = Fv.state
order by CAGR desc
limit 10;