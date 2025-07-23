## Cyberchase
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

