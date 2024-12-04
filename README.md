# Video Game Sales Data Pipeline Project

This repository contains the complete dbt project for analyzing video game sales across regions. The project uses a structured multi-layer architecture to transform raw data into meaningful insights. Below is an overview of the project structure and its components.

---

## Project Overview

The project leverages dbt to implement a robust ELT (Extract, Load, Transform) pipeline. The pipeline is organized into three layers:

### 1. **Bronze Schema (Raw Layer)**
- **Description:** Stores raw tables including `game`, `game_platform`, `game_publisher`, `genre`, `platform`, `publisher`, `region`, and `region_sales`.
- **Key Features:**
  - Performed basic validations such as data type checks and column counts to ensure data consistency.
  - Conducted tests for primary key uniqueness and foreign key relationships to maintain referential integrity.
  - Documented each table to improve data understanding and lineage tracking.

### 2. **Silver Schema (Clean Layer)**
- **Description:** Transforms raw data into clean, joined tables for easier analysis.
- **Tables:** `svr_game`, `svr_game_platform`, `svr_game_publisher`, and `svr_region_sales`.
- **Key Features:**
  - Conducted detailed data quality testing, including:
    - `values_to_be_in_other_table` to ensure reference integrity between tables.
    - `expect_column_values_to_be_between` to validate numerical data ranges.
  - Ensured clean and well-structured data for downstream analytics.

### 3. **Gold Schema (Analytics Layer)**
- **Description:** Provides a unified table, `gold_region_sales`, enabling comprehensive insights into video game sales trends.
- **Key Features:**
  - Consolidates clean data from Silver layer tables into a single analytics-ready table.
  - Facilitates detailed reporting and trend analysis.

---

## Raw Data

The raw dataset includes information about games, platforms, genres, publishers, and regional sales. It serves as the primary source for the ELT process.

- **Source:** [GitHub Raw Data Repository](https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_videogames/postgres)

---

## Repository Structure

```
├── analyses
├── macros
│   ├── test
│   │   ├── test_number_length_equal_to.sql
│   │   ├── test_values_to_be_in_table.sql
│   ├── generate_schema_name.sql
├── models
│   ├── bronze
│   │   ├── omd_doc_blocks.md
│   │   ├── schema.yml
│   ├── silver
│   │   ├── omd_doc_blocks.md
│   │   ├── schema.yml
│   │   ├── svr_game.sql
│   │   ├── svr_game_platform.sql
│   │   ├── svr_game_publisher.sql
│   │   ├── svr_region_sales.sql
│   ├── gold
│   │   ├── omd_doc_blocks.md
│   │   ├── schema.yml
│   │   ├── gold_region_sales.sql
├── snapshots
│   ├── game_platform_snapshot.sql
│   ├── game_snapshot.sql
│   ├── publisher_snapshot.sql
│   ├── region_sales_snapshot.sql
├── tests
├── README.md
```

---

## Key Features

1. **Documentation:**
   - All tables are documented to improve data understanding and ensure transparency.

2. **Data Quality Checks:**
   - Primary key and foreign key tests in the Bronze layer.
   - Advanced tests, including reference integrity and range checks, in the Silver layer.

3. **Analytics-Ready Data:**
   - Unified Gold layer table for easy visualization and insights.

---

## Getting Started

### Prerequisites
- Install dbt ([Get Started](https://docs.getdbt.com/docs/introduction)).

### Steps
1. Clone this repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd <project-directory>
   ```
3. Set up your dbt profile ([Guide](https://docs.getdbt.com/docs/profiles.yml)).
4. Run the models:
   ```bash
   dbt run
   ```
5. Test the models:
   ```bash
   dbt test
   ```
6. Generate and view documentation:
   ```bash
   dbt docs generate
   dbt docs serve
   ```

---

## Results

The final `gold_region_sales` table provides insights such as:
- Regional sales trends over time.
- Popular platforms and genres in different regions.
- Performance analysis of publishers.

---

## Contributing

Contributions are welcome! Please submit a pull request or create an issue if you have suggestions for improvement.

---

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

## Acknowledgments

Special thanks to the creators of the raw dataset and the dbt community for their incredible resources and support.

