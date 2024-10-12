#!/bin/bash
psql -U postgres -c "DROP DATABASE IF EXISTS justice_league;"
psql -U postgres -c "CREATE DATABASE justice_league;"
