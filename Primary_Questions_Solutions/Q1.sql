SELECT 
d.fiscal_year,
m.maker,
m.vehicle_category,
sum(m.electric_vehicles_sold) as total_sales
FROM electric_vehicle_sales_by_makers m
join dim_date d on m.date = d.date
where d.fiscal_year in ('2023','2024') and m.vehicle_category = '2-Wheelers'
group by  d.fiscal_year, m.maker, m.vehicle_category
order by total_sales desc
limit 3;