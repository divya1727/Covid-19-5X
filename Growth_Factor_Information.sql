{{ config(materialized='view') }}

with Growth_Factor_Information as (


  select Date,AVG(Growth_Factor_of_new_deaths) as New_Death_Avg,AVG(Growth_Factor_of_new_cases) as New_Cases_Avg from PLAYGROUND_Divya_Monga.Covid_19_Data group by Date

)
select *
from Growth_Factor_Information