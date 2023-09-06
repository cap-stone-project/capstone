with 

source as (

    select * from {{ source('netflix_data', 'top_10') }}

),

renamed as (

    select *

    from source

)

select * from renamed
