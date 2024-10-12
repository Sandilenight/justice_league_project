#!/bin/bash
sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib
sudo service postgresql start

psql -U postgres -c "CREATE DATABASE justice_league;"

psql -U postgres -d justice_league -c "
CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    name TEXT,
    power TEXT,
    role TEXT
);
CREATE TABLE missions (
    id SERIAL PRIMARY KEY,
    mission_name TEXT,
    threat_level INT,
    completed BOOLEAN
);
"
psql -U postgres -d justice_league -c "
INSERT INTO members (name, power, role) VALUES
('Batman', 'Tech & Strategy', 'Leader'),
('Superman', 'Super Strength & Flight', 'Hero'),
('Wonder Woman', 'Combat & Strength', 'Hero');
"
psql -U postgres -d justice_league -c "
INSERT INTO missions (mission_name, threat_level, completed) VALUES
('Save Metropolis', 5, false),
('Fight Darkseid', 10, false);
"
psql -U postgres -d justice_league -c "
CREATE TABLE leaderboard (
    member_id INT,
    missions_completed INT,
    FOREIGN KEY (member_id) REFERENCES members(id)
);
"

