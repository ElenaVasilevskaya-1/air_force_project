

WITH flights_data AS (
SELECT * 
FROM {{source('flights_data', 'flights')}}
)
SELECT * FROM flights_data