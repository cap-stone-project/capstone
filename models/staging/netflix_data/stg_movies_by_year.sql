with 

source as (

    select * from {{ source('netflix_data', 'movies_by_year') }}

),

renamed as (

    select *

    from source

)

select * from renamed
