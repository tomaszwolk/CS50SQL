-- In june_vacancies.sql, write a SQL statement to create a view named june_vacancies.
-- This view should contain all listings and the number of days in June of 2023 that they remained vacant.
-- Ensure the view contains the following columns:
--      * id, which is the id of the listing from the listings table.
--      * property_type, from the listings table.
--      * host_name, from the listings table.
--      * days_vacant, which is the number of days in June of 2023, that the given listing was marked as available.

CREATE VIEW "june_vacancies" AS
WITH "june_2023" AS (
    SELECT "listing_id",
    strftime('%m', "date") AS "month",
    strftime('%Y', "date") AS "year",
    "available"
    FROM "availabilities"
    WHERE "available" = "TRUE"
    AND "month" = '06'
    AND "year" = '2023'
)
SELECT "listings"."id", "property_type", "host_name", COUNT("listing_id") AS "days_vacant"
FROM "listings"
JOIN "june_2023" ON "listings"."id" = "june_2023"."listing_id"
WHERE "available" = 'TRUE'
GROUP BY "listings"."id";
