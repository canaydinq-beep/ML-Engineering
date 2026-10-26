-- Here's the link to the question's website.
-- https://datalemur.com/questions/laptop-mobile-viewership
-- PostgreSQL 14

SELECT
  COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_views
  COUNT(*) FILTER (WHERE device_type IN ('phone', 'tablet') AS mobile_views
FROM device_type;
