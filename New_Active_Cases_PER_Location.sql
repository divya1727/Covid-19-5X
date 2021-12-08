{{ config(materialized='view') }}

with Active_Cases_Information as (
    
select Date, Sum(New_Active_Cases) as Active_Cases,Location from  PLAYGROUND_Divya_Monga.Covid_19_Data group by Date,Location
)
select *
from Active_Cases_Information
