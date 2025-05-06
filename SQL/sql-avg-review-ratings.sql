-- Problem: Average Review Ratings
-- Source: <https://datalemur.com/questions/sql-avg-review-ratings>
-- Difficulty: Easy

SELECT EXTRACT(MONTH FROM submit_date) AS mth, product_id AS product, ROUND(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY mth, product
ORDER BY mth, product