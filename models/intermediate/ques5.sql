

WITH 

tv_shows AS (
    SELECT * FROM {{ref ('stg_tv_shows') }}
),
movies AS (
    SELECT * FROM {{ref ('stg_movies') }}
),

