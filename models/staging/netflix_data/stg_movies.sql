with 

source as (

    select * from {{ source('netflix_data', 'movies') }}

),

renamed as (

    select *

    from source

)

select * from renamed
