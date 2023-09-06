with 

source as (

    select * from {{ source('netflix_data', 'tv_shows_by_year') }}

),

renamed as (

    select *

    from source

)

select * from renamed
