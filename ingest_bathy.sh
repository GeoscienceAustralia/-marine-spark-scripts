
aws s3 cp s3://test-bathymetry-point-data-small/bath_small.txt .
geomesa-hbase ingest \
-c bathy \
-s bathy.sft \
-C bathy.convert \
bath_small.txt
