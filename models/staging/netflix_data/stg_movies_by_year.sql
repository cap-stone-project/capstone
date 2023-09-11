with 

source as (

    select * from {{ source('netflix_data', 'movies_by_year') }}

),

movies_by_year as (

    select 
        score,
        main_genre,
        title,
        release_year,
        main_production

    from source

)

select * from movies_by_year
