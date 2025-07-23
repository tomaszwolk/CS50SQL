-- create table "cipher"
CREATE TABLE "cipher" (
    "id" INTEGER,
    "start" INTEGER,
    "lenght" INTEGER
);

-- insert data from given table to "cipher"
INSERT INTO "cipher" ("id", "start", "lenght")
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

-- create view with "id" given in cipher, with columns "id", "sentence", "start", "lenght"
CREATE VIEW "cipher_sentence" AS
SELECT "cipher"."id", "sentence", "start", "lenght"
FROM "cipher"
LEFT JOIN "sentences" ON "cipher"."id" = "sentences"."id";

-- create view "message" using substr()
CREATE VIEW "message" AS
SELECT substr("sentence", "start", "lenght") AS "phrase"
FROM "cipher_sentence";
