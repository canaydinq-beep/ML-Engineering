-- Here's the link to the question's website.
-- https://datalemur.com/questions/tesla-unfinished-parts
-- PostgreSQL

SELECT
  part,
  assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;


