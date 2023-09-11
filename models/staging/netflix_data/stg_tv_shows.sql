with 

source as (

    select * from {{ source('netflix_data', 'tv_shows') }}

),

tv_shows as (

    select score,
    number_of_votes,
    main_genre,
    title,
    release_year,
    duration,
    main_production,
    number_of_seasons

    from source

)

select * from tv_shows
