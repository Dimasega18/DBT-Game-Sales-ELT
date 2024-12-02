{% docs gold_region_sales %}

The `gold_region_sales` table includes the following columns:

1. **region_id (Foreign Key)**  
   An identifier for each region.  
   *(Sourced from the `svr_region_sales` table in Silver.)*

2. **region_name (Varchar)**  
   The name of the region, such as "North America," "Europe," or "Japan."  
   *(Sourced from the `svr_region_sales` table in Silver.)*

3. **platform_name (Varchar)**  
   The name of the platform.  
   *(Sourced from the `svr_game_platform` table in Silver.)*

4. **release_year (Integer)**  
   The year the game was released on the platform.  
   *(Sourced from the `svr_game_platform` table in Silver.)*

5. **genre_name (Varchar)**  
   The name of the game genre.  
   *(Sourced from the `svr_game` table in Silver.)*

6. **game_name (Varchar)**  
   The name of the game.
   *(Sourced from the `svr_game` table in Silver.)*

7. **num_sales (Integer)**  
   The total number of sales in the region for the specific game-platform.  
   *(Sourced from the `svr_region_sales` table in Silver.)*

{% enddocs %}