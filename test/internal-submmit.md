
Run the container
```bash
docker run -it --name spark --rm wiseupdata/pyspark:3.4.0
```


Scala
```bash
$SPARK_HOME/bin/spark-submit --class org.apache.spark.examples.SparkPi --master local[2] /opt/spark/examples/jars/spark-examples_2.12-3.4.0.jar 10
```

Test variables
```
echo $JAVA_HOME
echo $SPARK_HOME
echo $PYTHONPATH
echo $PYSPARK_PYTHON
echo $PYSPARK_DRIVER_PYTHON
echo $PYLIB
echo $SPARK_TGZ_URL
echo $SPARK_TGZ_ASC_URL
echo $GPG_KEY
```