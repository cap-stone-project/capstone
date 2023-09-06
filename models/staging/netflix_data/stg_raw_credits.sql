with 

source as (

    select * from {{ source('netflix_data', 'raw_credits') }}

),

renamed as (

    select *

    from source

)

select * from renamed
