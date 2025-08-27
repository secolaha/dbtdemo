WITH CTE AS (
select 
to_timestamp(STARTED_AT) as STARTED_AT,
Date(to_timestamp(STARTED_AT)) as DATE_STARTED_AT,
HOUR(to_timestamp(STARTED_AT)) as  HOUR_STARTED_AT,
DAYNAME(to_timestamp(STARTED_AT)) as DAYOFWEEK,
{{get_daytype('STARTED_AT')}} DAY_TYPE,
MONTH(to_timestamp(STARTED_AT)),
{{get_season('STARTED_AT')}} as STATION_OF_YEAR
from 
{{ source('demo', 'bike') }}
where STARTED_AT != 'started_at'
)

select * from CTE