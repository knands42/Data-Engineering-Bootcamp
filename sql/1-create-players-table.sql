-- Clean database if contains any pre created data
DROP TABLE IF EXISTS players;
DROP TYPE IF EXISTS scoring_class;
DROP TYPE IF EXISTS season_stats;

-- Create the `players` table where is going to be our cumulative dimension table for players_sessions
CREATE TYPE season_stats AS (
    season INTEGER,
    gp INTEGER,
    pts REAL,
    reb REAL,
    ast REAL
    );
CREATE TYPE scoring_class AS ENUM ('star', 'good', 'average', 'bad');

-- season_stats is an array of struct, because this is what we are going to use as history
CREATE TABLE players (
                         player_name TEXT,
                         height TEXT,
                         college TEXT,
                         country TEXT,
                         draft_year TEXT,
                         draft_round TEXT,
                         draft_number TEXT,
                         season_stats season_stats[],
                         scoring_class scoring_class,
                         years_since_last_season INTEGER,
                         current_season INTEGER,
                         PRIMARY KEY (player_name, current_season)
);
