WITH int_movies_tv_shows_joined AS (
    SELECT * FROM {{ ref('int_movies_tv_shows_joined') }}   
),

final as (

    select *
    from int_movies_tv_shows_joined
    left join {{ ref('stg_top_10') }} using (title)
)

select * from final
order by score desc


