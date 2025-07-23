-- In 13.sql, write a SQL query to answer a question you have about the data! The query should:

--      * Involve at least one JOIN or subquery

SELECT "name", "graduated" FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE "graduated" > (
    SELECT AVG("graduated") FROM "graduation_rates"
) AND "dropped" = 0;
