mkdir gdelt
cd gdelt
seq 6 -1 1 | xargs -n 1 -I{} sh -c "date -d'{} days ago' +%Y%m%d" | xargs -n 1 -I{} aws s3 cp  s3://gdelt-open-data/events/{}.export.csv .

# you'll need to ensure the hbase-site.xml is provided on the classpath...by default it is picked up by the tools from standard locations
geomesa-hbase ingest -c geomesa.gdelt -C gdelt -f gdelt -s gdelt \*.csv

# query example
geomesa-hbase export -c geomesa.gdelt -f gdelt -m 50
