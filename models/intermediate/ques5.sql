
WITH 

tv_shows AS (
    SELECT * FROM {{ref ('stg_tv_shows') }}
),
movies AS (
    SELECT * FROM {{ref ('stg_movies') }}
),

top_10 AS (
    SELECT * FROM {{ ref ('stg_top_10')}}
),

raw_credits  AS (
    SELECT * FROM {{ ref ('stg_raw_credits')}}
),