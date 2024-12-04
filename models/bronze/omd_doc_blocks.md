{% docs game %}
**Description**: Contains details about games.

**Columns**:
`id`: A unique identifier for each game.
`genre_id`: Foreign key referencing the genre of the game.
`game_name`: The name of the game.
{% enddocs %}


{% docs game_platform %}
**Description**: Tracks the relationship between games, their publishers, and the platforms they are available on.

**Columns**:
`id`: A unique identifier for each record.
`game_publisher_id`: Foreign key referencing the id column in the game_publisher table.
`platform_id`: Foreign key referencing the platform.
`release_year`: The year the game was released on the platform.
{% enddocs %}


{% docs game_publisher %}
**Description**: Links games to their respective publishers.

**Columns**:
`id`: A unique identifier for each record.
`game_id`: Foreign key referencing the game.
`publisher_id`: Foreign key referencing the publisher.
{% enddocs %}


{% docs genre %}
**Description**: Stores different genres of games.

**Columns**:
`id`: A unique identifier for each genre.
`genre_name`: The name of the genre.
{% enddocs %}


{% docs platform %}
**Description**: Stores information about gaming platforms.

**Columns**:
`id`: A unique identifier for each platform.
`platform_name`: The name of the platform.
{% enddocs %}


{% docs publisher %}
**Description**: Contains details about game publishers.

**Columns**:
`id`: A unique identifier for each publisher.
`publisher_name`: The name of the publisher.
{% enddocs %}


{% docs region %}
**Description**: Contains data about regions.

**Columns**:
`id`: A unique identifier for each region.
`region_name`: The name of the region.
{% enddocs %}


{% docs region_sales %}
**Description**: Tracks sales of games across regions.

**Columns**:
`region_id`: Foreign key referencing the region.
`game_platform_id`: Foreign key referencing the game on a specific platform.
`num_sales`: The number of sales in the region.
{% enddocs %}