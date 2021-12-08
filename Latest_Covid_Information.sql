{{ config(materialized='view') }}

with Latest_Covid_Information as (

select _ROW,Date,New_Cases,New_Active_Cases,New_Cases_Per_Million,New_Deaths,New_Deaths_Per_Million,New_Recovered
from PLAYGROUND_Divya_Monga.Covid_19_Data order by Date

)
select *
from Latest_Covid_Information
