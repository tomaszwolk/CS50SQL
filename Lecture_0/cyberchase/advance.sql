-- Find titles of episodes that have aired during the holiday season

SELECT "title" FROM "episodes" WHERE "air_date"
LIKE '____-12-2%' OR "air_date" LIKE '____-12-3%';


-- Find each year, the first day of the year that PBS released a Cyberchase episode.
-- create new table using strftime (year, month_day)
-- number each episode in a year using ROW_NUMBER() OVER(PARTITION BY "year")
-- select "year", "month_day" where "episode_year_number" = 1;

SELECT "year", "month_day" FROM (
SELECT *, ROW_NUMBER() OVER(PARTITION BY "year") AS episode_year_number
FROM (SELECT strftime('%Y', "air_date") AS year, strftime('%m-%d', "air_date") AS month_day FROM "episodes"))
WHERE "episode_year_number" = 1;
