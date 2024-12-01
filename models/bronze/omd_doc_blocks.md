{% docs game %}

The `game` table stores the following data:

1. **id (Primary Key)**
    A unique identifier for each game.

2. **genre_id (Foreign Key)**
    Links the game to its corresponding genre in the `genre` table.

3. **game_name (Varchar)**
    The full name of the game.

{% enddocs %}


{% docs game_platform %}

The `game_platform` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each record in the `game_platform` table.

2. **game_publisher_id (Foreign Key)**
    Links the record to the publisher in the `game_publisher` table.

3. **platform_id (Foreign Key)**
    Links the record to the platform in the `platform` table.

4. **release_year (Integer)**
    The year the game was released on the specified platform.

{% enddocs %}


{% docs game_publisher %}

The `game_publisher` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each record in the `game_publisher` table.

2. **game_id (Foreign Key)**
    Links the record to the `games` table, identifying the specific game.

3. **publisher_id (Foreign Key)**
    Links the record to the `publisher` table, identifying the publisher of the game.

{% enddocs %}


{% docs genre %}

The `genre` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each genre.

2. **genre_name (Varchar)**
    The name of the genre, such as "Action," "Adventure," "Fighting," etc.

{% enddocs %}


{% docs platform %}

The `platform` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each platform.

2. **platform_name (Varchar)**
    The name of the platform, such as "PS3," "PS," "3DS," etc.

{% enddocs %}


{% docs publisher %}

The `publisher` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each publisher.

2. **publisher_name (Varchar)**
    The name of the publisher, such as "1C Company," "Aerosoft," etc.

{% enddocs %}


{% docs region %}

The `region` table includes the following columns:

1. **id (Primary Key)**
    A unique identifier for each region. This column ensures that each region is distinct in the database.

2. **region_name (Varchar)**
    The name of the region, such as "North America," "Europe," etc. This helps to identify the geographical area.

{% enddocs %}


{% docs region_sales %}

The `region_sales` table includes the following columns:

1. **region_id (Foreign Key)**
    Links the record to the `region` table, identifying the geographical region where the sales occurred.

2. **game_platform_id (Foreign Key)**
    Links the record to the `game_platform` table, identifying the platform on which the game was sold.

3. **num_sales (Integer)**
    The number of game sales recorded for the specified region and platform.

{% enddocs %}