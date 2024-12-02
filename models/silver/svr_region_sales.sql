{{ config(schema='silver',materialized='table') }}

SELECT 
    ROW_NUMBER() OVER(order by rs.region_id) AS region_sales_id,
    rs.region_id,
    r.region_name,
    rs.game_platform_id,
    rs.num_sales
FROM 
    {{ source('bronze','region_sales') }} rs LEFT JOIN {{ source('bronze','region') }} r ON rs.region_id = r.id

    