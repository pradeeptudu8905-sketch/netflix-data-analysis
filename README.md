#  Netflix Data Analysis

##  Overview

This project focuses on cleaning and preprocessing a Netflix dataset containing information about movies and TV shows. The dataset has been prepared by handling missing values, standardizing formats, and improving data quality for further analysis.

---

## Objectives

* Clean raw Netflix dataset
* Handle missing values
* Standardize data formats
* Prepare data for analysis

---

##  Tools Used

* Python
* Pandas
* Google Colab
* GitHub

---

##  Dataset Description

The dataset includes information such as:

* Content type (Movie / TV Show)
* Title
* Director
* Cast
* Country
* Date added
* Release year
* Rating
* Duration
* Genre
* Description

---

## Data Cleaning Process

* Filled missing values in:

  * `director`, `cast`, `country` → "Unknown"
* Removed rows with missing:

  * `rating` and `duration`
* Converted `date_added` to datetime format
* Checked and handled null values
* Standardized text formats

---

## Project Files

* `Python_Task_1.ipynb` → Data cleaning notebook
* `cleaned_netflix_data.csv` → Final cleaned dataset
* `data_dictionary.md` → Column details and metadata

---

## Data Dictionary

Detailed column information is available in:
 `data_dictionary.md`

(This file explains each column, data type, and examples) 

---

##  Future Scope

* Data visualization using Power BI
* Dashboard creation
* Trend and genre analysis

---

##  Author

**Pradeep Tudu**
BTech ECE Student | Aspiring Data Analyst

---

##  Conclusion

This project demonstrates essential data cleaning and preprocessing skills using Python, which are crucial for data analysis tasks.
