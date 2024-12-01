{{ config(schema='silver',materialized='table') }}

SELECT 
    gp.id,
    bg.genre_name,
    bg.game_name,
    p.publisher_name
FROM 
    (({{ source('bronze','game_publisher') }} gp LEFT JOIN {{ ref('svr_game') }} bg ON gp.game_id = bg.id)
    LEFT JOIN {{ source('bronze','publisher') }} p ON gp.publisher_id = p.id)
