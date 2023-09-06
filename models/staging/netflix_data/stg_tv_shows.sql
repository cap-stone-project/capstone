with 

source as (

    select * from {{ source('netflix_data', 'tv_shows') }}

),

renamed as (

    select *

    from source

)

select * from renamed
