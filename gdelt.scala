val df = spark.read.format("geomesa").option("bigtable.table.name", "geomesa.gdelt").option("geomesa.feature", "gdelt").load()
df.createOrReplaceTempView("gdelt")
spark.sql("SELECT globalEventId,geom,dtg FROM gdelt LIMIT 5").show()