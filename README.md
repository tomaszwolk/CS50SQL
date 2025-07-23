# CS50's Introduction to Databases with SQL
This is my solutions to the problem sets.
## Week 0 Querying
### [Cyberchase](Problem_Set_0/cyberchase/)
For each of the following questions, you should write a single SQL query that outputs the results specified by each problem. Your response must take the form of a single SQL query. You should not assume anything about the ids of any particular episodes: your queries should be accurate even if the id of any particular episode were different. Finally, each query should return only the data necessary to answer the question: if the problem only asks you to output the names of episodes, for example, then your query should not also output each episodes’s air date.

- In `1.sql`, write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.  
- In `2.sql`, list the season number of, and title of, the first episode of every season.
- In `3.sql`, find the production code for the episode “Hackerized!”.
- In `4.sql`, write a query to find the titles of episodes that do not yet have a listed topic.
- In `5.sql`, find the title of the holiday episode that aired on December 31st, 2004.
- In `6.sql`, list the titles of episodes from season 6 (2008) that were released early, in 2007.
- In `7.sql`, write a SQL query to list the titles and topics of all episodes teaching fractions.
- In `8.sql`, write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
    - You might find it helpful to know you can use `BETWEEN` with dates, such as `BETWEEN '2000-01-01' AND '2000-12-31'`.
- In `9.sql`, write a query that counts the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.
- In `10.sql`, write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.
- In `11.sql`, list the titles of episodes from season 5, in reverse alphabetical order.
- In `12.sql`, count the number of unique episode titles.
- In `13.sql`, write a SQL query to explore a question of your choice. This query should:
Involve at least one condition, using `WHERE` with `AND` or `OR`

Feeling more comfortable?
You can optionally attempt the below queries, which may require some advanced knowledge!  
1. Write a SQL query to find the titles of episodes that have aired during the holiday season, usually in December in the United States.  
    - Your query should output a table with a single column for the title of each episode.  
    - Try to find a better solution than `LIKE` if you can!  
2. Write a SQL query to find, for each year, the first day of the year that PBS released a Cyberchase episode.  
    - Your query should output a table with two columns, one for the year and one for the earliest month and day an episode was released that year.

### [36 views](Problem_Set_0/views/)
For each of the following questions, you should write a single SQL query that outputs the results specified by each problem. Your response must take the form of a single SQL query. You should not assume anything about the ids of any particular observations: your queries should be accurate even if the id of any particular observation were different. Finally, each query should return only the data necessary to answer the question.

- In `1.sql`, write a SQL query that a translator might take interest in: list, side by side, the Japanese title and the English title for each print. Ensure the Japanese title is the first column, followed by the English title.
- In `2.sql`, write a SQL query to list the average colors of prints by Hokusai that include “river” in the English title. (As an aside, do they have any hint of blue?)
- In `3.sql`, write a SQL query to count how many prints by Hokusai include “Fuji” in the English title. Though all of Hokusai’s prints focused on Mt. Fuji, in how many did “Fuji” make it into the title?
- In `4.sql`, write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”. Hiroshige’s prints were created in Japan’s “Edo period,” referencing the eastern capital city of Edo, now Tokyo.
- In `5.sql`, write a SQL query to find the highest contrast value of prints by Hokusai. Name the column “Maximum Contrast”. Does Hokusai’s prints most contrasting print actually have much contrast?
- In `6.sql`, write a SQL query to find the average entropy of prints by Hiroshige, rounded to two decimal places. Call the resulting column “Hiroshige Average Entropy”.
- In `7.sql`, write a SQL query to list the English titles of the 5 brightest prints by Hiroshige, from most to least bright. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.
- In `8.sql`, write a SQL query to list the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.
- In `9.sql`, write a SQL query to find the English title and artist of the print with the highest brightness.
- In `10.sql`, write a SQL query to answer a question of your choice about the prints. The query should:
  - Make use of `AS` to rename a column
  - Involve at least one condition, using `WHERE`  
  - Sort by at least one column, using `ORDER BY`  

### [Normals](Problem_Set_0/normals/)
For each of the following questions, you should write a single SQL query that outputs the results specified by each problem. Your response must take the form of a single SQL query. You should not assume anything about the ids of any particular observations: your queries should be accurate even if the id of any particular observation were different. Finally, each query should return only the data necessary to answer the question.

- In `1.sql`, write a SQL query to find the normal ocean surface temperature in the Gulf of Maine, off the coast of Massachusetts. To find this temperature, look at the data associated with 42.5° of latitude and -69.5° of longitude.
    - Recall that you can find the normal ocean surface temperature in the `0m` column, which stands for 0 meters of depth!
- In `2.sql`, write a SQL query to find the normal temperature of the deepest sensor near the Gulf of Maine, at the same coordinate above.
The deepest sensor records temperatures at 225 meters of depth, so you can find this data in the `225m` column.
- In `3.sql`, choose a location of your own and write a SQL query to find the normal temperature at 0 meters, 100 meters, and 200 meters. You might find Google Earth helpful if you’d like to find some coordinates to use!
- In `4.sql`, write a SQL query to find the lowest normal ocean surface temperature.
- In `5.sql`, write a SQL query to find the highest normal ocean surface temperature.
- In `6.sql`, write a SQL query to return all normal ocean temperatures at 50m of depth, as well as their respective degrees of latitude and longitude, within the Arabian Sea. Include latitude, longitude, and temperature columns. For simplicity, assume the Arabian Sea is encased in the following four coordinates:
    - 20° of latitude, 55° of longitude
    - 20° of latitude, 75° of longitude
    - 0° of latitude, 55° degrees of longitude
    - 0° of latitude, 75° degrees of longitude
- In `7.sql`, write a SQL query to find the average ocean surface temperature, rounded to two decimal places, along the equator. Call the resulting column “Average Equator Ocean Surface Temperature”.
    - The equator’s ocean surface temperatures can be found at all longitudes between the latitudes -0.5° and 0.5°, inclusive.
- In `8.sql`, write a SQL query to find the 10 locations with the lowest normal ocean surface temperature, sorted coldest to warmest. If two locations have the same normal ocean surface temperature, sort by latitude, smallest to largest. Include latitude, longitude, and surface temperature columns.
- In `9.sql`, write a SQL query to find the 10 locations with the highest normal ocean surface temperature, sorted warmest to coldest. If two locations have the same normal ocean surface temperature, sort by latitude, smallest to largest. Include latitude, longitude, and surface temperature columns.
- There are 180 whole degrees of latitude. In `10.sql`, write a SQL query to determine how many points of latitude we have at least one data point for. (Why might we not have data points for all latitudes?)

### [Players](Problem_Set_0/players/)
- In `1.sql`, write a SQL query to find the hometown (including city, state, and country) of Jackie Robinson.
- In `2.sql`, write a SQL query to find the side (e.g., right or left) Babe Ruth hit.
- In `3.sql`, write a SQL query to find the ids of rows for which a value in the column `debut` is missing.
- In `4.sql`, write a SQL query to find the first and last names of players who were not born in the United States. Sort the results alphabetically by first name, then by last name.
- In `5.sql`, write a SQL query to return the first and last names of all right-handed batters. Sort the results alphabetically by first name, then by last name.
- In `6.sql`, write a SQL query to return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA). Sort the results first by debut date—from most recent to oldest—then alphabetically by first name, followed by last name.
- In `7.sql`, write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.
- In `8.sql`, write a SQL query to find the average height and weight, rounded to two decimal places, of baseball players who debuted on or after January 1st, 2000. Return the columns with the name “Average Height” and “Average Weight”, respectively.
- In `9.sql`, write a SQL query to find the players who played their final game in the MLB in 2022. Sort the results alphabetically by first name, then by last name.
- In `10.sql`, write SQL query to answer a question of your choice. This query should:
    - Make use of `AS` to rename a column
    - Involve at least condition, using `WHERE`
    - Sort by at least one column using `ORDER BY`

Feeling more comfortable?
You can optionally attempt the below queries, which may require some advanced knowledge!
- Write a single SQL query to list the first and last names of all players of above average height, sorted tallest to shortest, then by first and last name.
