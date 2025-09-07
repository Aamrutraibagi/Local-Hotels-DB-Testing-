@echo off

REM MySQL credentials
set MYSQL_USER=root
set MYSQL_PASS=Pappa@143

REM Database name
set DB_NAME=hotels

REM SQL file path
set SQL_FILE=db_data\hotels.sql

REM Drop the existing database if it exists and create a new one
echo Dropping and recreating the database...
mysql -u%MYSQL_USER% -p%MYSQL_PASS% -e "DROP DATABASE IF EXISTS %DB_NAME%; CREATE DATABASE %DB_NAME%;"

REM Check if the SQL file exists
if exist "%SQL_FILE%" (
    REM Import the SQL file into the new database
    echo Importing data from %SQL_FILE%...
    mysql -u%MYSQL_USER% -p%MYSQL_PASS% %DB_NAME% < "%SQL_FILE%"
    echo Data import complete.
) else (
    echo Error: SQL file %SQL_FILE% not found.
    exit /b 1
)

echo Database refresh complete.