#!/bin/bash
# Script – mysqlbackup.sh

DATADIR=”/home/mysqlbackups”
USERNAME=username
PASSWORD=password
NOW=$(date +”%d-%m-%Y”)

#BACKUP DATABASE in date format (eg “MyDatabase-20-6-2013.sql”)
/usr/bin/mysqldump -u $USERNAME -p$PASSWORD –databases MyDatabase > /home/mysqlbackups/MyDatabase.$NOW.sql

# REMOVE BACKUPS MORE THAN 1 WEEK OLD – This removes all files in the directory older than a week, so be careful!!
find /home/mysqlbackups/* -mtime +7 -exec rm {} \;
~                                                   
