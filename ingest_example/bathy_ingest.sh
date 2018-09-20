#!/usr/bin/env bash

# https://community.hortonworks.com/articles/183050/ingest-geospatial-data-ais-data-in-csv-format-by-u.html

geomesa-hbase ingest \
-c test_bathy \
-s bathy.sft \
-C bathy_txt.convert \
tiny_bath.txt