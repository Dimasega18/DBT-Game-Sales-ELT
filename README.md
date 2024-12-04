# Video Game Sales Data Pipeline Project

This repository contains the complete dbt project for analyzing video game sales across regions. The project uses a structured multi-layer architecture to transform raw data into meaningful insights. Below is an overview of the project structure and its components.

---

## Project Overview

The project leverages dbt to implement a robust ELT (Extract, Load, Transform) pipeline. The pipeline is organized into three layers:

### 1. **Bronze Schema (Raw Layer)**
- **Description:** Stores raw tables including `game`, `game_platform`, `game_publisher`, `genre`, `platform`, `publisher`, `region`, and `region_sales`.
- **Key Features:**
  - Performed basic validations such as data type checks and column counts to ensure data consistency.
  - Documented each table to improve data understanding and lineage tracking.

### 2. **Silver Schema (Clean Layer)**
- **Description:** Transforms raw data into clean, joined tables for easier analysis.
- **Tables:** `svr_game`, `svr_game_platform`, `svr_game_publisher`, and `svr_game_sales`.
- **Key Features:**
  - Conducted detailed data quality testing, including:
    - Primary key uniqueness checks.
    - Foreign key validity tests.
  - Ensured clean and well-structured data for downstream analytics.

### 3. **Gold Schema (Analytics Layer)**
- **Description:** Provides a unified table, `gold_region_sales`, enabling comprehensive insights into video game sales trends.
- **Key Features:**
  - Consolidates clean data into a single analytics-ready table.
  - Facilitates detailed reporting and trend analysis.

---

## Raw Data

The raw dataset includes information about games, platforms, genres, publishers, and regional sales. It serves as the primary source for the ELT process.

- **Source:** [GitHub Raw Data Repository](#)

---

## Repository Structure

```
├── models
│   ├── bronze
│   │   ├── raw_game.sql
│   │   ├── raw_game_platform.sql
│   │   ├── ...
│   ├── silver
│   │   ├── svr_game.sql
│   │   ├── svr_game_sales.sql
│   │   ├── ...
│   ├── gold
│       ├── gold_region_sales.sql
├── snapshots
├── tests
├── analyses
├── docs
├── README.md
```

---

## Key Features

1. **Documentation:**
   - All tables are documented to improve data understanding and ensure transparency.

2. **Data Quality Checks:**
   - Basic checks in the Bronze layer.
   - Advanced checks (e.g., key validity and uniqueness) in the Silver layer.

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

