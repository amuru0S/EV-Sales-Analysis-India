with pen_2022 as (
select
s.state,
d.fiscal_year,
(sum(s.electric_vehicles_sold)/sum(s.total_vehicles_sold))*100 as pen_rate_22
from electric_vehicle_sales_by_state s
inner join dim_date d on s.date = d.date
where d.fiscal_year = '2022'
group by s.state
),
pen_2023 as (
select
s.state,
d.fiscal_year,
round((sum(s.electric_vehicles_sold)/sum(s.total_vehicles_sold))*100,2) as pen_rate_23
from electric_vehicle_sales_by_state s
inner join dim_date d on s.date = d.date
where d.fiscal_year = '2023'
group by s.state
),
pen_2024 as (
select
s.state,
d.fiscal_year,
round((sum(s.electric_vehicles_sold)/sum(s.total_vehicles_sold))*100,2) as pen_rate_24
from electric_vehicle_sales_by_state s
inner join dim_date d on s.date = d.date
where d.fiscal_year = '2024'
group by s.state
),
neg_pen_1 as (
select 
p24.state,
p24.fiscal_year,
round(((pen_rate_24 - pen_rate_23)/pen_rate_23)*100,2) as neg_pen
from pen_2024 p24
inner join pen_2023 p23 on p24.state = p23.state
),
neg_pen_2 as (
select
p22.state,
p22.fiscal_year,
round(((pen_rate_23 - pen_rate_22)/pen_rate_23)*100,2) as neg_pen
from pen_2022 p22
inner join pen_2023 p23 on p22.state = p23.state
)
select * from neg_pen_1 where neg_pen < 0
union
select * from neg_pen_2 where neg_pen < 0
