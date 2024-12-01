{% docs svr_game %}

The `svr_game` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each game. 
    *(Sourced from the `game` table in Bronze.)*

2. **genre_name (Varchar)**
    The name of the game genre. 
    *(Sourced from the `genre` table in Bronze.)*

3. **game_name (Varchar)**
    The name of the game. 
    *(Sourced from the `game` table in Bronze.)*

{% enddocs %}


{% docs svr_game_platform %}

The `svr_game_platform` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each game-platform entry. 
    *(Sourced from the `game_platform` table in Bronze.)*

2. **game_publisher_id (Foreign Key)**
    The ID of the publisher associated with the game. 
    *(Sourced from the `svr_game_publisher` table in Silver.)*

3. **platform_name (Varchar)**
    The name of the platform. 
    *(Sourced from the `platform` table in Bronze.)*

4. **release_year (Text)**
    The year the game was released on the platform. 
    *(Sourced from the `game_platform` table in Bronze.)*

{% enddocs %}


{% docs svr_game_publisher %}

The `svr_game_publisher` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each game entry. 
    *(Sourced from the `game` table in Bronze.)*

2. **genre_name (Varchar)**
    The name of the game genre. 
    *(Sourced from the `genre` table in Bronze.)*

3. **game_name (Varchar)**
    The name of the game. 
    *(Sourced from the `game` table in Bronze.)*

4. **publisher_name (Varchar)**
    The name of the publisher. 
    *(Sourced from the `publisher` table in Bronze.)*

{% enddocs %}


{% docs svr_region_sales %}

The `svr_region_sales` table includes the following columns:

1. **region_id (Foreign Key)**
    A unique identifier for each region. 
    *(Sourced from the `region` table in Bronze.)*

2. **region_name (Varchar)**
    The name of the region. 
    *(Sourced from the `region` table in Bronze.)*

3. **game_platform_id (Foreign Key)**
    A reference to the game-platform entry. 
    *(Sourced from the `svr_game_platform` table in Silver.)*

4. **num_sales (Integer)**
    The total number of sales in the region for the specific game-platform. *(Sourced from the `region_sales` table in Bronze.)*


{% enddocs %}

