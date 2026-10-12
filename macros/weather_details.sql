{% macro funct(i)%}
    case 
        when {{i}} like '%snow%' then 'winter'
        when {{i}} like '%rain%' then 'rainy'
        when {{i}} like '%cloud%' then 'cloudy'
       when {{i}} like '%mist%' then 'misty'
       when {{i}} like '%clear%' then 'clear sky'
       else 'no information' 
       END 
    {% endmacro %}