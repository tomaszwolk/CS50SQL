-- Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among
-- the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.
--      * Your query should return a table with two columns, one for the players’ first names and one of their last names.
--      * You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
--      * You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
--      * Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
--      * Keep in mind the lessons you’ve learned in 10.sql and 11.sql!

-- "performances"."RBI"
-- "performances"."H"
WITH "least_expensive_player_by_RBI" AS (
    SELECT "players"."id" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
    AND "performances"."year" = "salaries"."year"
    WHERE "salaries"."year" = 2001 AND "performances"."RBI" > 0
    ORDER BY ("salary" / "performances"."RBI"), "players"."id"
    LIMIT 10
),
"least_expensive_player_per_hit" AS (
    SELECT "players"."id" FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
    AND "performances"."year" = "salaries"."year"
    WHERE "salaries"."year" = 2001 AND "performances"."H" > 0
    ORDER BY ("salary" / "performances"."H"), "players"."id"
    LIMIT 10
)
SELECT "first_name", "last_name" FROM "players"
WHERE "id" IN (
    SELECT * FROM "least_expensive_player_by_RBI"
    INTERSECT
    SELECT * FROM "least_expensive_player_per_hit"
);
