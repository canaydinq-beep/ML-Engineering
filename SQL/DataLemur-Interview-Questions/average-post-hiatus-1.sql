-- Here's the link to the question's website.
-- https://datalemur.com/questions/sql-average-post-hiatus-1
-- PostgreSQL 14

SELECT
  user_id,
  MAX(post_date::date) - MIN(post_date::date) AS days_between
FROM posts 
WHERE DATE_PART('year', post_date::date) = 2021
GROUP BY user_id
HAVING COUNT(*) > 1;
