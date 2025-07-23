-- For any two users, the app needs to quickly show a list of the friends they have in common.
-- Given two usernames, lovelytrust487 and exceptionalinspiration482, find the user IDs of their mutual friends.
-- A mutual friend is a user that both lovelytrust487 and exceptionalinspiration482 count among their friends.

-- Ensure your query uses the index automatically created on primary key columns of the friends table.
-- This index is called sqlite_autoindex_friends_1.

-- FIRST EXAMPLE COUNTING FRIENDS
WITH "count_friends" AS (
    SELECT "user_id", COUNT("user_id") AS "count_friends" FROM "friends"
        WHERE "friend_id" IN (
        SELECT "id" FROM "users"
        WHERE "username" = 'lovelytrust487'
        OR "username" = 'exceptionalinspiration482'
        )
    GROUP BY "user_id"
)
SELECT "user_id" FROM "count_friends"
WHERE "count_friends" = 2;

-- OR USE INTERSECTION OF TWO GROUPS
-- WITH "user_1" AS (
--     SELECT "user_id", "friend_id" FROM "friends"
--     WHERE "friend_id" = (
--         SELECT "id" FROM "users"
--         WHERE "username" = 'lovelytrust487'
--     )
-- ),
-- "user_2" AS (
--     SELECT "user_id", "friend_id" FROM "friends"
--     WHERE "friend_id" = (
--         SELECT "id" FROM "users"
--         WHERE "username" = 'exceptionalinspiration482'
--     )
-- )
-- SELECT "user_1"."user_id" FROM "user_1"
-- JOIN "user_2" ON "user_1"."user_id" = "user_2"."user_id";
