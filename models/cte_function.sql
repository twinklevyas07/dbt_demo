with cte as (
    select cast(city as integer) as city_id,
    weather_desc as des,
    cast(longitudnal as float) as lon,
    cast(latitudnal as float) as lat,
   
    {{funct('weather_desc')}}

     from 
     {{ source('demo', 'weather') }}
)
select * from cte
;