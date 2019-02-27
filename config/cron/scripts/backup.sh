#!/bin/sh
#TSTAMP=`date +%Y%m%d%H%M%S`;
echo "Starting backup `date`";
TARGET=/data/backups/db;
mkdir -p $TARGET;
cd /data/backups/db;
sqlite3 /data/invoicing/production.sqlite3 ".backup `date +%Y%m%d%H%M%S`_m_database.sq3.bak";
echo "Ending backup `date`";
