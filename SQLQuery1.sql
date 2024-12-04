WITH cte as (
SELECT *  FROM bike_share_yr_0
UNION
SELECT *  FROM bike_share_yr_1)

SELECT 
dteday,season,a.yr,weekday,hr,rider_type,riders,price,COGS,
riders*price as revenue,
riders*price- COGS as profit
FROM cte as a
left join cost_table as b
on a.yr= b.yr
