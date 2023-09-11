with 

source as (

    select * from {{ source('netflix_data', 'raw_credits') }}

),

raw_credits as (

    select character,
    role,
    name,
    id,
    person_id

    from source

)

select * from raw_credits
