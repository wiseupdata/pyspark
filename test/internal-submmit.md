
Run the container
```bash
docker run -it --name spark --rm wiseupdata/pyspark:3.4.0
```


Compile
```bash
$SPARK_HOME/bin/spark-submit --class org.apache.spark.examples.SparkPi --master local[2] ./src/main/java/org/apache/spark/examples/SparkPi.java
```

Jar
```bash
$SPARK_HOME/bin/spark-submit --class org.apache.spark.examples.SparkPi --master local[2] /opt/spark/examples/jars/spark-examples_2.12-3.4.0.jar 10
```