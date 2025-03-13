

WITH airports_regions_join AS (
SELECT * 
FROM {{source('flights_data', 'airports')}}
LEFT JOIN {{source('flights_data', 'public.regions')}}
USING (country)
)
SELECT * FROM airports_regions_join