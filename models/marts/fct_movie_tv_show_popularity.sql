WITH
 AS (
  
int_movies_tv_shows_joined  SELECT * FROM {{ ref('int_movies_tv_shows_joined') }}
),
 
SELECT * FROM int_movies_tv_shows_joined


