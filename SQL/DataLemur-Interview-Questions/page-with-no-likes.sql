-- Here's the link to the question's website.
-- https://datalemur.com/questions/sql-page-with-no-likes
-- PostgreSQL

SELECT
  P.page_id
FROM pages P
LEFT JOIN page_likes PL ON P.page_id = PL.page_id
WHERE PL.user_id IS NULL
ORDER BY P.page_id ASC;

