CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);


.import --csv --skip 1 meteorites.csv meteorites_temp


-- 1. Any empty values in meteorites.csv are represented by NULL in the meteorites table.
--      * Keep in mind that the mass, year, lat, and long columns have empty values in the CSV.
UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = "";

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = "";

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = "";

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = "";


-- 2. All columns with decimal values (e.g., 70.4777) should be rounded to the nearest hundredths place
--    (e.g., 70.4777 becomes 70.48).
--      * Keep in mind that the mass, lat, and long columns have decimal values.
UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2);

UPDATE "meteorites_temp"
SET "lat" = ROUND("lat", 2);

UPDATE "meteorites_temp"
SET "long" = ROUND("long", 2);


-- 3. All meteorites with the nametype “Relict” are not included in the meteorites table.
DELETE FROM "meteorites_temp"
WHERE "nametype" = 'Relict';


-- 4. The meteorites are sorted by year, oldest to newest, and then—if any two meteorites landed in
--    the same year—by name, in alphabetical order.

-- 5. You’ve updated the IDs of the meteorites from meteorites.csv, according to the order specified in #4.
--      * The id of the meteorites should start at 1, beginning with the meteorite that landed in
--        the oldest year and is the first in alphabetical order for that year.


CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);

-- First option to insert sorted data
-- INSERT INTO "meteorites" ("id", "name", "class", "mass", "discovery", "year", "lat", "long")
-- SELECT ROW_NUMBER() OVER (
--     ORDER BY "year", "name"
--     ), "name", "class", "mass", "discovery", "year", "lat", "long"
-- FROM "meteorites_temp";

-- Second option to insert sorted data
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
ORDER BY "year", "name";

DROP TABLE "meteorites_temp";


