with 

source as (

    select * from {{ source('netflix_data', 'movies') }}

),

movies as (

    select 
        score,
        number_of_votes,
        main_genre,
        title,
        release_year,
        duration,
        main_production

    from source

)

select * from movies
