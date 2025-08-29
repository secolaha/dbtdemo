WITH BIKE as ( 

select distinct 
start_statio_id,
start_station_name,
start_lat, 
start_lng 

from {{ source('demo', 'bike') }}

WHERE ride_id != 'ride_id'

)

select * from BIKE