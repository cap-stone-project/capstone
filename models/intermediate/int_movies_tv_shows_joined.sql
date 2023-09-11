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
)


SELECT
    SCORE,
    NUMBER_OF_VOTES,
    MAIN_GENRE,
    TITLE,
    RELEASE_YEAR,
    MAIN_PRODUCTION,
    NULL AS NUMBER_OF_SEASONS,
    DURATION AS MOVIE_DURATION,
    NULL AS TV_SHOW_DURATION
FROM movies

UNION ALL

SELECT
    SCORE,
    NUMBER_OF_VOTES,
    MAIN_GENRE,
    TITLE,
    RELEASE_YEAR,
    MAIN_PRODUCTION,
    NUMBER_OF_SEASONS,
    NULL AS MOVIE_DURATION,
    DURATION AS TV_SHOW_DURATION
FROM tv_shows
ORDER BY score DESC


