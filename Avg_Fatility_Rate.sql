{{ config(materialized='view') }}

with Avg_Fatility_Rate_Per_Province as (

   select Province,Avg(CASE_FATALITY_RATE) from PLAYGROUND_Divya_Monga.Covid_19_Data group by province
)
select *
from Avg_Fatility_Rate_Per_Province