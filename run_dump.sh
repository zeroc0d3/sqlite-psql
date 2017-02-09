#!/bin/sh

# Remove old dump files
/bin/rm -f dump/*

# Execute dump sqlite
# type: sh migrator.sh sqlite_to_postgres.py [sqlite_db] [target_folder_dump]
/bin/sh migrator.sh sqlite_to_postgres.py sample.db dump
