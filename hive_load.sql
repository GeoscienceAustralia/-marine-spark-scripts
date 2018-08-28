DROP TABLE IF EXISTS test;
CREATE EXTERNAL TABLE test(lat float, lon float, depth float, time String, project String, vessel String, line String, profile String, beam int, accuracy float, status String)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION 's3a://test-bathymetry-point-data-small/'
tblproperties ("skip.header.line.count"="1");
