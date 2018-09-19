#!/usr/bin/env bash

# https://community.hortonworks.com/articles/183050/ingest-geospatial-data-ais-data-in-csv-format-by-u.html

geomesa-hbase ingest \
-c ais \
-s ais_data_conf.sft \
-C ais_data_feature_conf.convert \
sample.csv