select city, max(latitudnal) 
 from {{ source('demo', 'weather') }}
group by city