-- In 13.sql, write a SQL query to explore a question of your choice. This query should:
--      * Involve at least one condition, using WHERE with AND or OR

SELECT "title", "production_code" FROM "episodes" WHERE "air_date" LIKE '2005%' AND "episode_in_season" = 5;
