with 

source as (

    select * from {{ source('netflix_data', 'raw_titles') }}

),

raw_titles as (

    select 
        seasons,
        imdb_id,
        imdb_votes,
        release_year,
        runtime,
        title,
        type,
        imdb_score,
        genres,
        production_countries,
        id,
        age_certification

    from source

)

select * from raw_titles
