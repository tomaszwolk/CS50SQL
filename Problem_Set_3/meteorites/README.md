# Meteorite Cleaning
## Problem to Solve
As a data engineer at NASA, you often spend your time cleaning meteorites—or at least the data they create.

You’ve been given a CSV file of historical meteorite landings here on Earth, of which there are quite a few! Your job is to import the data into a SQLite database, cleaning it up along the way. After you’re done, the database will be used in analyses by some of your fellow engineers.

## Specification
In `import.sql`, write a series of SQL (and SQLite) statements to import and clean the data from `meteorites.csv` into a table, `meteorites`, in a database called `meteorites.db`.

Within `meteorites.db`, the `meteorites` table should have the following columns:

<details>
<summary>Columns in the meteorites table</summary>

- `id`, which represents the unique ID of the meteorite.
- `name`, which represents the given name of the meteorite.
- `class`, which is the classification of the meteorite, according to the traditional classification scheme.
- `mass`, which is the weight of the meteorite, in grams.
- `discovery`, which is either “Fell” or “Found”. “Fell” indicates the meteorite was seen falling to Earth, whereas “Found” indicates the meteorite was found only after landing on Earth.
- `year`, which is the year in which the the meteorite was discovered.
- `lat`, which is the latitude at which the meteorite landed.
- `long`, which is the longitude at which the meteorite landed.
</details>

Keep in mind that not all columns in the CSV should end up in the final table!

To consider the data in the `meteorites` table clean, you should ensure…

1. Any empty values in `meteorites.csv` are represented by `NULL` in the `meteorites` table.
    - Keep in mind that the `mass`, `year`, `lat`, and `long` columns have empty values in the CSV.
2. All columns with decimal values (e.g., 70.4777) should be rounded to the nearest hundredths place (e.g., 70.4777 becomes 70.48).
    - Keep in mind that the `mass`, `lat`, and `long` columns have decimal values.
3.All meteorites with the `nametype` “Relict” are not included in the `meteorites` table.
4. The meteorites are sorted by `year`, oldest to newest, and then—if any two meteorites landed in the same year—by `name`, in alphabetical order.
5. You’ve updated the IDs of the meteorites from `meteorites.csv`, according to the order specified in #4.
    - The `id` of the meteorites should start at 1, beginning with the meteorite that landed in the oldest year and is the first in alphabetical order for that year.

## Advice
It can feel overwhelming to know where to start when cleaning such a big data file! Let’s break the problem down into smaller pieces.

Begin by importing meteorites.csv into a temporary table
Write SQL statements to clean the imported data
Transfer the data from your temporary table into a meteorites table

## Usage
Let’s introduce a few terminal commands that might come in handy while you’re working on cleaning this data set! Consider the following:
```
cat import.sql | sqlite3 meteorites.db
```
The above command can be broken down into two parts:

- cat import.sql outputs the data in import.sql. Try it by itself if you’re curious.
- sqlite3 meteorites.db opens a file called meteorites.db with the sqlite3 engine, as you’re already familiar with.

When these commands are combined with a pipe, `|`, the data from `import.sql` is treated as a set of statements for `sqlite3` to run on `meteorites.db`. If `meteorites.db` doesn’t yet exist, it will be created and the statements in `import.sql` will be run on it.

What if your `import.sql` isn’t perfect and you want to re-create the database? Consider deleting the current version of `meteorites.db` with:
```
rm meteorites.db
```
`rm` stands for remove. If prompted, type “y” followed by enter to confirm the deletion of `meteorites.db`. From there, you can re-run `cat import.sql | sqlite3 meteorites.db` to create `meteorites.db` from scratch.

Looking to speed things up? You can use the up arrow to access previously typed commands in your terminal.