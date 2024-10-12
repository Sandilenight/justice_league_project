#!/bin/bash
echo "Enter mission name: "
read mission_name
echo "Enter threat level (1-10): "
read threat_level
psql -U postgres -d justice_league -c "INSERT INTO missions (mission_name, threat_level, completed) VALUES ('$mission_name', '$threat_level', false);"
