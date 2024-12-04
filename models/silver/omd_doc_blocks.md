{% docs svr_game %}
**Description**: A temporary table containing summarized game data, generated during query execution

**Columns**:  
`id`: A unique identifier for the record.  
`genre_name`: The genre of the game.  
`game_name`: The name of the game.
{% enddocs %}


{% docs svr_game_platform %}
**Description**: Represents the relationship between games, their publishers, and the platforms they are available on, including the release year.

**Columns**:  
`id`: A unique identifier for the record.  
`genre_publisher_id`: Foreign key referencing the id column in svr_game_publisher.  
`platform_name`: The name of the platform the game is available on.  
`release_year`: The year the game was released on the platform.
{% enddocs %}


{% docs svr_game_publisher %}
**Description**: Contains data linking games and their publishers.

**Columns**:  
`id`: A unique identifier for the record.  
`game_name`: The name of the game.  
`publisher_name`: The name of the publisher.
{% enddocs %}


{% docs svr_region_sales %}
**Description**: Stores region sales data incrementally, allowing new or updated data to be added efficiently.

**Columns**:  
`id`: A unique identifier for each region sale record.  
`region_name`: The name of the region.  
`game_platform_id`: Foreign key referencing the id column in the svr_game_platform table.  
`num_sales`: The number of sales in the region.
{% enddocs %}

