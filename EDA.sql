use netflix;
select count(*) as total
from netflix_data;

--  Q1. Top 5 Countries by Number of Titles
-- Question: Which countries have the most content on Netflix?
SELECT country,
       COUNT(*) AS Total_Titles
FROM netflix_data
WHERE country != 'Unknown'
GROUP BY country
ORDER BY Total_Titles DESC
LIMIT 5;

-- Q2. Monthly Titles Added Trend
-- Question: How does the number of titles added change month by month?
SELECT DATE_FORMAT(date_added, '%Y-%m') AS Month,
       COUNT(*) AS Titles_Added
FROM netflix_data
WHERE date_added IS NOT NULL
GROUP BY Month
ORDER BY Month;

--  Q3. Top 5 Directors by Number of Titles
-- Question: Which directors have contributed the most titles to Netflix?
SELECT director,
       COUNT(*) AS Total_Titles
FROM netflix_data
WHERE director != 'Unknown'
GROUP BY director
ORDER BY Total_Titles DESC
LIMIT 5;

--  Q4. Content Type Distribution (Movies vs TV Shows)
-- Question: What is the ratio of Movies to TV Shows on Netflix?
SELECT type,
       COUNT(*) AS Total_Titles,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflix_data), 2) AS Percentage
FROM netflix_data
GROUP BY type
ORDER BY Total_Titles DESC;

-- Q5. Most Common Ratings
-- Question: What are the most frequently assigned content ratings on Netflix?
SELECT rating,
       COUNT(*) AS Total_Titles
FROM netflix_data
WHERE rating != 'Unknown'
GROUP BY rating
ORDER BY Total_Titles DESC
LIMIT 5;

-- Q6. Average Duration by Content Type
-- Question: What is the average duration of Movies (in minutes) and TV Shows (in seasons)?
SELECT type,
       ROUND(AVG(duration), 2) AS Avg_Duration
FROM  netflix_data
GROUP BY type;

-- Q7. Best Year — Most Titles Added
-- Question: Which year had the highest number of titles added to Netflix?

SELECT YEAR(date_added) AS Year,
       COUNT(*) AS Titles_Added
FROM netflix_data
WHERE date_added IS NOT NULL
GROUP BY Year
ORDER BY Titles_Added DESC
LIMIT 1;