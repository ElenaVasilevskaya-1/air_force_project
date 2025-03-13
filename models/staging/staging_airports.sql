

WITH airports_regions_join AS (
SELECT * 
FROM {{source('flights_data', 'our_5_airports')}}
LEFT JOIN {{source('flights_data', 'regions')}}
USING (country)
)
SELECT * FROM airports_regions_join