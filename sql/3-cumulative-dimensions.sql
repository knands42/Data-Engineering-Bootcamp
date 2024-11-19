-- Clean the data already inserted in the `players` table, since we are gonna introduce a new approach to fill the table
-- adding a new column
TRUNCATE TABLE players;
ALTER TABLE players ADD COLUMN is_active BOOLEAN;

-- Populate again the table with following a different approach
-- INSERT INTO players
WITH years AS (
    SELECT *
    FROM GENERATE_SERIES(1996, 2022) AS seasons
), p AS (
    SELECT
        player_name,
        MIN(season) AS first_season
    FROM player_seasons
    GROUP BY player_name
), players_and_seasons AS (
    SELECT *
    FROM p
    JOIN years y
        ON p.first_season <= y.seasons
)
SELECT * FROM players_and_seasons;