<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="Wise Up Data's Instagram" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/instagram.png" />   
</a> 
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data's Discord" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/discord.png" />
</a>
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data | Twitter" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/twitter.png" />
</a>
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data's LinkedIN" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/linkedin.png" />
</a>

![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fwiseupdata%2Fpyspark&countColor=%2337d67a&style=flat)
![license](https://img.shields.io/github/license/wiseupdata/pyspark)

---
<a name="readme-top"></a>

<h1>
<img align="left" alt="Docker image" src="https://raw.githubusercontent.com/wiseupdata/pyspark/main/assets/imgs/docker.png" width="100" />

Pyspark docker images! 🚀️

</h1>

# Simple to use ❤️

```bash
docker run -it -u spark wiseupdata/pyspark bash
```

<br>

# Summary 📃

- Versions info 🐍
  - <p align="left"><a href="#version-3.4.0">3.4.0</a></p>
- Utils 🛠️
  - <p align="left"><a href="#ref_util">Utils</a></p>
  - <p align="left"><a href="#ref_build">Create your own image to dockerhub</a></p>
  - <p align="left"><a href="#ref_references">References</a></p>
  - [Dockerhub versions](https://hub.docker.com/r/wiseupdata/pyspark/tags)


<br>

<a name="version-3.4.0"></a>

## Version 3.4.0 ✨️

- Pyspark 3.4.0 
- Ubuntu 23.04 Luna - Official
- Python 3.10 - Official
- OpenJDK8 - [Official](https://adoptium.net/download/)
- Kubernetes Ready and Tested!
- User`ubuntu` with sudo, no password
- Simple shell, type:
  - `pyspark` and have fun with Python and Spark! ❤️
  - `spark` and have fun with Scala and Spark! 🫀
  - `python` import  the pyspark and have fun!
- Made with A.I. contribution 🤖 
- [Dockerfile](https://github.com/wiseupdata/pyspark/blob/main/versions/3.4.0/Dockerfile)

  > This setup it's the same for the tags: 3.4.0 and 3.4.0-ubuntu-23.04


🚀 This docker was built on top of Apache, to be resilient and ready for debug, so it's light enough! If you need something different try the pure Apache docker!

<br>

Example with specific version 💻:
```bash
docker run -it -u spark wiseupdata/pyspark:3.4.0 bash
docker run -it -u spark wiseupdata/pyspark:3.4.0-ubuntu-23.04 bash
```

### Inside made easy! 😍
#### Type pyspark and enjoy Python with Spark!

```bash
pyspark
```

```bash
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /__ / .__/\_,_/_/ /_/\_\   version 3.4.0
      /_/

Using Python version 3.10.11 (main, May  2 2023 14:04:10)
```

#### Type spark and enjoy it Scala with Spark!
```bash
pyspark
```

```bash
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /___/ .__/\_,_/_/ /_/\_\   version 3.4.0
      /_/
         
Using Scala version 2.12.17 (OpenJDK 64-Bit Server VM, Java 1.8.0_372)
```


### Info 🔎
- Pyspark 3.4.0 it's official from [spark.apache.org](https://spark.apache.org/downloads.html)
  - To use pyspark 3.4.0 just type:  `pyspark`

### Tests 🧪

#### Pyspark

Type  `python` or `pyspark` and test!

```python
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("TestPySpark").getOrCreate()
data = [("Alice", 1), ("Bob", 2), ("Charlie", 3)]
df = spark.createDataFrame(data, ["Name", "Age"])
df.show()

spark.stop()
exit()
```

#### Scala

Type  `spark` and test!

```scala
import org.apache.spark.sql.SparkSession

val spark = SparkSession.builder.appName("Spark Scala Test").getOrCreate()
val df = Seq((1, "John"), (2, "Jane"), (3, "Jim")).toDF("id", "name")
df.show()

spark.stop()
:quit
```


<a name="ref_build"></a>

# Create your own image to dockerhub 🥳
<details>
<summary>
click here!▶️
</summary>


## Simple customization example. 🎢

- Update the `Dockerfile` and run the command bellow
- Build the image

```bash
docker build -t pyspark ./versions/3.4.0 --no-cache
```
- Test the image
```bash
docker run -it --rm pyspark bash
```

- Debug mode - Useful for Kubernetes
```
docker run --name pyspark -d --rm pyspark bash /exec
docker exec -it pyspark bash

# Exit and kill
exit
docker rm pyspark -f
```

- Log in to your account 🤜

```bash
docker login -u wiseupdata
```

- Create a tag 🤺

```bash
docker tag pyspark wiseupdata/pyspark
docker tag pyspark wiseupdata/pyspark:3.4.0
docker tag pyspark wiseupdata/pyspark:3.4.0-ubuntu-23.04
docker tag pyspark wiseupdata/pyspark:3.4.0-ubuntu-23.04-jdk8
```

- push your image to dockerhub ♨️
```bash
docker push wiseupdata/pyspark
docker push wiseupdata/pyspark:3.4.0
docker push wiseupdata/pyspark:3.4.0-ubuntu-23.04
docker push wiseupdata/pyspark:3.4.0-ubuntu-23.04-jdk8
```

### Test the image 🎢

```bash
docker run -it -u ubuntu wiseupdata/pyspark:3.4.0 bash
```
</details>

<br>

<a name="ref_util"></a>

# Utils 🎁 
<details>
<summary>
click here!▶️
</summary>

list all container
```bash
docker ps -a
```

kill all containers ☠️
```bash
docker rm $(docker ps -a -q) -f
```

list the images
```bash
docker image ls -a
```

delete one image
```bash
docker image rm pyspark -f
```

Delete all images ☠️
```bash
docker image rm  $(docker image ls -a ) -f
```

Force run ☠️
```bash
docker run -it --entrypoint /bin/bash pyspark
```

</details>
<br>
<br>


---
<br>
<br>

<a name="ref_references"></a>

# References 🌍 🗄️

1. [GitHub Repository](https://github.com/wiseupdata/pyspark)
1. [WiseUpData](https://www.wiseupdata.com/)
1. [Emojis](https://github.com/wiseupdata/emojis)
1. [OpenJDK](https://adoptium.net/download/)
1. [Apache Dockerfile](https://github.com/apache/spark/blob/master/resource-managers/kubernetes/docker/src/main/dockerfiles/spark/Dockerfile)
1. [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)


<br>
<br>

---

## Maintainer 🤗 👨‍💻

Silvio Liborio

📧 silvio.liborio@wiseupdata.com

<a href="https://www.linkedin.com/in/silvio-de-melo-liborio">silvio-de-melo-liborio <img align="left" alt="LinkedIN" width="18px" src="https://raw.githubusercontent.com/wiseupdata/wsl-latest/main/assets/linkedin.svg" />
</a>

<br>
<p align="right"><a href="#readme-top">back to top ⏫ </a></p>
<br>
<br>
<br>
<br>
