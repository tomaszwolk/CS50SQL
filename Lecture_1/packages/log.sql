
-- *** The Lost Letter ***
-- Address from where letter was sent
SELECT * FROM "addresses" WHERE
"address" = '900 Somerville Avenue';
-- Address to
SELECT * FROM "addresses" WHERE
"address" = '2 Finnigan Street'
-- Package id
SELECT "id" FROM "packages" WHERE
"from_address_id" = (
    SELECT "id" FROM "addresses" WHERE
    "address" = '900 Somerville Avenue'
) AND "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE
"address" = '2 Finnigan Street'
);
-- scan id's from scans
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE
    "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue')
        AND "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '2 Finnigan Street')
);
-- address where letter was droped
SELECT * FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM (
        SELECT "address_id", "action" FROM "scans"
        WHERE "package_id" = (
            SELECT "id" FROM "packages" WHERE "from_address_id" = (
                SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue')
                AND "to_address_id" = (
                    SELECT "id" FROM "addresses" WHERE "address" = '2 Finnigan Street'
                )
            )
        )
    WHERE "action" = 'Drop'
);


-- *** The Devious Delivery ***
-- id of the package
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;
-- package in scans table
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
);
-- address where packages was droped

SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    ) AND "action" = 'Drop'
);


-- *** The Forgotten Gift ***
-- id address sent from
SELECT "id" FROM "addresses" WHERE "address" =
'109 Tileston Street';
-- id address sent to
SELECT "id" FROM "addresses" WHERE "address" =
'728 Maple Place';
-- From table packages
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" =
    '109 Tileston Street'
) AND "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" =
    '728 Maple Place'
);

-- scans table
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" =
        '109 Tileston Street'
    ) AND "to_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" =
        '728 Maple Place'
    )
);

-- driver 17
SELECT * FROM "drivers" WHERE "id" = 17;
