
{{ config(materialized='view') }}

with Monthly_Deaths_Information as (

 select Month(DATE(date)) AS Month, Year(DATE(date)) AS Year,Sum(Total_Deaths) as Total_Deaths_Per_Month
  from  PLAYGROUND_Divya_Monga.Covid_19_Data GROUP BY Month(DATE(date)), Year(DATE(date)) ORDER BY  Total_Deaths_Per_Month

)
select *
from Monthly_Deaths_Information