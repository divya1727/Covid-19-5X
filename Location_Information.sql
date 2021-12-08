{{ config(materialized='view') }}

with Location_Information as (

select distinct Location,Location_Level,Location_Iso_Code,Longitude,Latitude,Island,Province,Time_Zone,Special_Status,Total_Regencies,Total_Cities,Total_Districts,
Total_Rural_Villages,Population,Population_Density
from PLAYGROUND_Divya_Monga.Covid_19_Data

)
select *
from Location_Information
