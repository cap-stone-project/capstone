WITH 

tv_shows AS (
    SELECT * FROM {{ ref('stg_tv_shows') }}
),

movies AS (
    SELECT * FROM {{ ref('stg_movies') }}
),

top_10 AS (
    SELECT * FROM {{ ref ('stg_top_10')}}
),

raw_credits  AS (
    SELECT * FROM {{ ref ('stg_raw_credits')}}
),



SELECT * FROM tv_shows
JOIN movies ON tv_shows.score = movies.score

SELECT * FROM tv_shows
JOIN movies ON tv_shows.main_genre = movies.main_genre


SELECT * FROM top_10
JOIN movies ON top_10.title = movies.title
