
CREATE EXTERNAL TABLE test(lat float, lon float, depth float, time String, proj\
ect String, vessel String, line String, profile String, beam int, accuracy floa\
t, status String)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION 's3a://test-bathymetry-point-data-small/'
tblproperties ("skip.header.line.count"="1");
