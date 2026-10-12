select city,latitudnal, max(latitudnal) over (partition by city) from {{ source('demo', 'weather') }}
order by city desc;