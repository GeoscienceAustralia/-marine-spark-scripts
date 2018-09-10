# This needs to be sourced
export VERSION=2.0.2
export JARS=file:///opt/geomesa/dist/spark/geomesa-hbase-spark-runtime_2.11-${VERSION}.jar,file:///usr/lib/hbase/conf/hbase-site.xml
echo $JARS
