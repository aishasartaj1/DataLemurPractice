-- Problem: Histogram of Tweets
-- Source: https://datalemur.com/questions/sql-histogram-tweets
-- Difficulty: Easy

WITH total_tweets AS (
  SELECT user_id, COUNT(tweet_id) AS tweet_user
  FROM tweets
  WHERE EXTRACT(YEAR FROM tweet_date) = 2022
  GROUP BY user_id
)
SELECT tweet_user AS tweet_bucket, COUNT(user_id) AS users_num 
FROM total_tweets
GROUP BY tweet_user
ORDER BY tweet_bucket;
