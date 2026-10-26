-- Here's the link to the question's website.
-- https://datalemur.com/questions/teams-power-users
-- PostgreSQL 14

SELECT
  sender_id,
  COUNT(message_id) AS message_count
FROM messages
WHERE DATE_PART('year', sent_date::date) = 2022 AND
      DATE_PART('month', sent_date::date) = 8
GROUP BY sender_id
ORDER BY COUNT(message_id) DESC
LIMIT 2;
