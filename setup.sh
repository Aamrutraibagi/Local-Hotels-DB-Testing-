#!/bin/bash

# MySQL credentials
MYSQL_USER="root"
MYSQL_PASS=""

# Database name
DB_NAME="hotels"

# SQL file path
SQL_FILE="db_data/hotels.sql"

# Drop the existing database if it exists and create a new one
echo "Dropping and recreating the database..."
mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" -e "DROP DATABASE IF EXISTS $DB_NAME; CREATE DATABASE $DB_NAME;"

# Check if the SQL file exists
if [ -f "$SQL_FILE" ]; then
    # Import the SQL file into the new database
    echo "Importing data from $SQL_FILE..."
    mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" "$DB_NAME" < "$SQL_FILE"
    echo "Data import complete."
else
    echo "Error: SQL file $SQL_FILE not found."
    exit 1
fi

echo "Database refresh complete."