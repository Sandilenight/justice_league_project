#!/bin/bash
echo "Enter member name: "
read name
echo "Enter power: "
read power
echo "Enter role: "
read role
psql -U postgres -d justice_league -c "INSERT INTO members (name, power, role) VALUES ('$name', '$power', '$role');"
