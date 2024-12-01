{{ config(schema='silver',materialized='table') }}

SELECT 
    gp.id,
    gp.game_publisher_id,
    p.platform_name,
    gp.release_year::TEXT
FROM 
    {{ source('bronze','game_platform') }} gp LEFT JOIN {{ source('bronze','platform') }} p ON gp.platform_id = p.id