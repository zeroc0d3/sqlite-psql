#!/bin/sh

### REQUIREMENT ###
# Binary file "sqlite3" from 
# https://www.sqlite.org/

PATH_SOURCE="sample.db";
PATH_TARGET_DUMP="dump/dump.sql";
PATH_TARGET_SCHEMA="dump/dump_schema.sql";
PATH_TARGET_DATA="dump/dump_data.sql";

#### DUMP ALL SCHEMA & DATA #####
sqlite3 $PATH_SOURCE .dump > $PATH_TARGET_DUMP;
echo "Done... Export all to: " $PATH_TARGET_DUMP;

#### DUMP SCHEMA (ONLY) #####
sqlite3 $PATH_SOURCE .schema > $PATH_TARGET_SCHEMA;
echo "Done... Export schema (only) to: " $PATH_TARGET_SCHEMA;

#### DUMP DATA (ONLY) #####
grep -vx -f $PATH_TARGET_SCHEMA $PATH_TARGET_DUMP > $PATH_TARGET_DATA;
echo "Done... Export data (only) to: " $PATH_TARGET_DATA;
