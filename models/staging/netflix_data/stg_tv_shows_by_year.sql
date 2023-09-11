with 

source as (

    select * from {{ source('netflix_data', 'tv_shows_by_year') }}

),

tv_shows_by_year as (

    select 
        score,
        main_genre,
        title,
        release_year,
        main_production,
        number_of_seasons

    from source

)

select * from tv_shows_by_year
