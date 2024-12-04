{{ config(schema='gold',materialized='table') }}

SELECT
	srs.id, 
	srs.region_name, 
	sgp.platform_name, 
	sgp.release_year,
	sgp2.genre_name,
	sgp2.game_name,
	srs.num_sales
FROM (( {{ ref('svr_region_sales') }} srs LEFT JOIN {{ ref('svr_game_platform') }} sgp ON srs.game_platform_id = sgp.id)
		LEFT JOIN {{ ref('svr_game_publisher') }} sgp2 ON sgp.game_publisher_id = sgp2.id)