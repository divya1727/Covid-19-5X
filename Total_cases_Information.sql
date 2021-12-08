{{ config(materialized='view') }}

with Total_Cases_Information as (
    
select _ROW,Date,Total_Recovered, Total_Cases_Per_Million,Total_Active_Cases, Total_Deaths, Total_Cases, Total_Deaths_Per_Million 
from PLAYGROUND_Divya_Monga.Covid_19_Data order by Date

)
select *
from Total_Cases_Information
