{{ config(schema='silver',materialized='table') }}

SELECT 
    g.id,
    gen.genre_name,
    g.game_name
FROM 
    {{ source('bronze','game') }} g LEFT JOIN {{ source('bronze','genre') }} gen ON g.genre_id = gen.id