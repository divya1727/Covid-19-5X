
{{ config(materialized='view') }}

with Total_Cases_Per_MONTH as (

 select Month(DATE(date)) AS Month, Year(DATE(date)) AS Year,Sum(Total_Cases) as Total_Cases_Per_Month
  from  PLAYGROUND_Divya_Monga.Covid_19_Data GROUP BY Month(DATE(date)), Year(DATE(date)) ORDER BY  Total_Cases_Per_Month

)
select *
from Total_Cases_Per_MONTH