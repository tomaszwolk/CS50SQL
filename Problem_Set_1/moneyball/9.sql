-- What salaries are other teams paying? In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.
--      * Round the average salary column to two decimal places and call it “average salary”.
--      * Sort the teams by average salary, least to greatest.
--      * Your query should return a table with two columns, one for the teams’ names and one for their average salary.

SELECT "name", ROUND(AVG("salaries"."salary"), 2) AS "average salary" FROM "teams"
JOIN "salaries" ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year" = 2001
GROUP BY "salaries"."team_id"
ORDER BY "average salary" ASC
LIMIT 5;
