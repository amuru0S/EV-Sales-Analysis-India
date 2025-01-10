select 
InitialVal.maker,
round(((Power(final_value/initial_value,1 /2.0))-1),2) as CAGR
from
(select 
maker,
sum(electric_vehicles_sold) as initial_value
from electric_vehicle_sales_by_makers m
left join dim_date d on m.date = d.date
where fiscal_year = '2022' and vehicle_category = '4-Wheelers'
group by maker
) as InitialVal
inner join
( select 
maker,
sum(electric_vehicles_sold) as final_value
from electric_vehicle_sales_by_makers m
left join dim_date d on m.date = d.date
where fiscal_year = '2024' and vehicle_category = '4-Wheelers'
group by maker
) as FinalVal
on InitialVal.maker = FinalVal.maker
order by CAGR desc
limit 5;
