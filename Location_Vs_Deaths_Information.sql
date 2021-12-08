{{ config(materialized='view') }}

with Location_Vs_Deaths_Information as (
    
select location,Sum(New_Deaths) from PLAYGROUND_Divya_Monga.Covid_19_Data group by Location

)
select *
from Location_Vs_Deaths_Information
