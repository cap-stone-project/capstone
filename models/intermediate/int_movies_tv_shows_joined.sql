WITH 

tv_shows AS (
    SELECT * FROM {{ ref('stg_tv_shows') }}
),

movies AS (
    SELECT * FROM {{ ref('stg_movies') }}
)

SELECT * FROM tv_shows
JOIN movies ON tv_shows.score = movies.score

SELECT * FROM tv_shows
JOIN movies ON tv_shows.main_genre = movies.main_genre