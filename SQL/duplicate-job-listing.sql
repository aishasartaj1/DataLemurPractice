-- Problem: Duplicate Job Listings
-- Source: <https://datalemur.com/questions/duplicate-job-listings>
-- Difficulty: Easy

SELECT COUNT(j1.job_id) AS duplicate_companies
FROM job_listings j1
JOIN job_listings j2
ON j1.company_id = j2.company_id
AND j1.title = j2.title
AND j1.description = j2.description
AND j1.job_id < j2.job_id