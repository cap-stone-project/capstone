with 

source as (

    select * from {{ source('netflix_data', 'top_10') }}

),

top_10 as (

    select 
        viewership_score,
        year_to_date_rank,
        type,
        netflix_exclusive,
        last_week_rank,
        title,
        rank,
        as_of,
        netflix_release_date,
        days_in_top_10

    from source

)

select * from top_10
