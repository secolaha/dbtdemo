{%macro get_season(x)%}
CASE 
WHEN MONTH(to_timestamp({{x}})) in (12,1,2)
THEN 'Winter'
WHEN MONTH(to_timestamp({{x}})) in (3,4,5)
THEN 'Spring'
WHEN MONTH(to_timestamp({{x}})) in (6,7,8)
THEN 'Summer'
else 'Fall'
END 
{%endmacro%}


{%macro get_daytype(x)%}
CASE 
WHEN DAYNAME(to_timestamp({{x}})) in ('Sat','Sun')
THEN 'Weekend'
else 'businessday'
END 
{%endmacro%}