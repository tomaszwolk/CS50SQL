-- In 10.sql, write SQL query to answer a question of your choice. This query should:
--      * Make use of AS to rename a column
--      * Involve at least condition, using WHERE
--      * Sort by at least one column using ORDER BY

SELECT "first_name", "last_name", "birth_country" AS "Country", "debut", "final_game"
FROM "players"
WHERE "birth_country" = 'Poland'
ORDER BY "debut", "last_name", "first_name";
