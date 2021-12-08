{{ config(materialized='view') }}

with Population_Information as (

 select distinct Province,Population,Population_Density from  PLAYGROUND_Divya_Monga.Covid_19_Data 
)
select *
from Population_Information
