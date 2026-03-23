#  Data Dictionary - Netflix Cleaned Dataset

## Dataset Overview
This dataset contains cleaned information about movies and TV shows available on Netflix. It includes details such as content type, title, country, release year, duration, genre, and description. The dataset has been preprocessed by handling missing values and formatting date fields.

---

## Column Details

| Column Name  | Data Type|                  Description                        |      Example         |
|--------------|----------|-----------------------------------------------------|----------------------|
| show_id      | string   | Unique identifier for each Netflix title            | s1234                |
| type         | string   | Type of content available on Netflix                | Movie / TV Show      |
| title        | string   | Name of the movie or TV show                        | Stranger Things      |
| director     | string   | Director of the content                             | Rajiv Chilaka        |
| cast         | string   | List of actors involved in the content              | Actor1, Actor2       |
| country      | string   | Country or countries where the content was produced | India, United States |
| date_added   | datetime | Date when the content was added to Netflix          | 2020-09-01           |
| release_year | int      | Year the content was originally released            | 2019                 |
| rating       | string   | Content rating (age classification)                 | TV-MA, PG            |
| duration     | string   | Duration of the content                             | 90 min, 2 Seasons    |
| listed_in    | string   | Genre or category of the content                    | Dramas, Comedies     |
| description  | string   | Brief summary or description of the content         | A thrilling story... |

---

## Data Cleaning Notes
- Missing values in `date_added`, `rating`, and `duration` were handled.
- `date_added` column was converted to datetime format.
- Rows with critical missing values were removed.
- Text columns were cleaned using string operations.

---

## Usage
This dataset is suitable for:
- Exploratory Data Analysis (EDA)
- Data visualization (Power BI, Matplotlib, Seaborn)
- Trend analysis of Netflix content
- Genre and country-based insights
