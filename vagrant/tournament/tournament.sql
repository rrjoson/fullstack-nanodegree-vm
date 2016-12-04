-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

CREATE TABLE players ( id SERIAL PRIMARY KEY,
						name TEXT );

CREATE TABLE matches ( id SERIAL PRIMARY KEY,
						winner INTEGER REFERENCES players (id),
						loser INTEGER REFERENCES players (id));

CREATE VIEW total_matches AS (
	SELECT
		players.id,
		count(matches.id) AS total_matches
	FROM matches
	INNER JOIN players
	ON players.id=matches.winner
	OR players.id=matches.loser
	GROUP BY players.id
);

CREATE VIEW wins AS (
	SELECT
		players.id,
		count(matches.id) AS wins
	FROM players
	INNER JOIN matches
	ON players.id=matches.winner
	GROUP BY players.id
);


CREATE VIEW standings AS (
	SELECT
		players.id,
		players.name,
		coalesce(total_matches.total_matches, 0) AS total_matches,
		coalesce(wins.wins ,0) AS wins
	FROM players
	LEFT JOIN total_matches
	ON players.id=total_matches.id
	LEFT JOIN wins
	ON wins.id=players.id
	ORDER BY wins.wins
	DESC
);
