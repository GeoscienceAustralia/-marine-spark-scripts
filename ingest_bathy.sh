
aws s3 cp s3://test-bathymetry-point-data/GA-4452_2016-146_3560_20160525_030635_SolanderMay2016.txt .
geomesa-hbase ingest \
-c bathy \
-s bathy.sft \
-C bathy.convert \
GA-4452_2016-146_3560_20160525_030635_SolanderMay2016.txt
