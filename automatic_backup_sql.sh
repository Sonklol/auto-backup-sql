#!/bin/bash

# Database credentials
user="user"
password="password"
host="127.0.0.1"
db_name="db_name"

# Other options
backup_path="/home/FXServer/SQL_Backups" # Dir to sql backups
date=$(date +"%d-%b-%Y")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 30 days
#find $backup_path/* -mtime +30 -exec rm {} \;
