#########################################################
# Oficial Python Image based in Ubuntu
#########################################################
# Ubuntu 23.04
FROM wiseupdata/python:3.10

LABEL maintainer="silvio liborio"


##############################################################################
# Environment Variables
##############################################################################
USER root
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux
ENV SPARK_VERSION=3.4.0
ENV HADOOP_VERSION=3
ENV JAVA_OPEN_JDK="OpenJDK8U-jdk_x64_linux_hotspot_8u372b07"

# Define en_US types for the environmet
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_MESSAGES en_US.UTF-8


##############################################################################
# Simple update and clean
##############################################################################
# Update package list
RUN apt-get update && apt-get upgrade -y

# Clean up unnecessary files and directories
RUN rm -rf /tmp/* && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*


##############################################################################
# Install Java 8
##############################################################################

# Download
RUN cd /opt && \
    wget https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u372-b07/${JAVA_OPEN_JDK}.tar.gz && \
    tar -xzf ${JAVA_OPEN_JDK}.tar.gz && \
    rm ${JAVA_OPEN_JDK}.tar.gz && \
    mv jdk* java

# Setup
RUN ln -s /opt/java/bin/java /usr/local/bin/java && \
    ln -s /opt/java/bin/javac /usr/local/bin/javac && \
    update-alternatives --install /usr/bin/java java /usr/local/bin/java 1 && \
    update-alternatives --install /usr/bin/javac javac /usr/local/bin/javac 1

# Java envs
RUN export JAVA_HOME=/opt/java


##############################################################################
# Install Spark
##############################################################################
RUN cd /opt && \
    wget https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    tar xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark && \
    chown -R root:root spark && \
    rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

RUN export SPARK_HOME=/opt/spark


##############################################################################
# Spark variables
##############################################################################
# RUN echo "source /etc/profile" >> /etc/bash.bashrc
# TODO: Not working in Ubuntu 23, could be anything, try to fix it in the future to not be so verbose in the code as the next lines!

# spark envs to all Bourne-compatible shells.
RUN echo " " >> /etc/profile
RUN echo "export SPARK_HOME=/opt/spark" >> /etc/profile
RUN echo "export PYTHONPATH=$SPARK_HOME/python:${SPARK_HOME}/python/lib/pyspark.zip:$SPARK_HOME/python/lib/py4j-0.10.9.7-src.zip" >> /etc/profile
RUN echo "export PYSPARK_PYTHON=/usr/local/bin/python" >> /etc/profile
RUN echo "export PYSPARK_DRIVER_PYTHON=/usr/local/bin/python" >> /etc/profile
RUN echo "export PYLIB=$SPARK_HOME/python/lib" >> /etc/profile
RUN echo " " >> /etc/profile

RUN echo " " >> /etc/bash.bashrc
RUN echo "export SPARK_HOME=/opt/spark" >> /etc/bash.bashrc
RUN echo "export PYTHONPATH=$SPARK_HOME/python:${SPARK_HOME}/python/lib/pyspark.zip:$SPARK_HOME/python/lib/py4j-0.10.9.7-src.zip" >> /etc/bash.bashrc
RUN echo "export PYSPARK_PYTHON=/usr/local/bin/python" >> /etc/bash.bashrc
RUN echo "export PYSPARK_DRIVER_PYTHON=/usr/local/bin/python" >> /etc/bash.bashrc
RUN echo "export PYLIB=$SPARK_HOME/python/lib" >> /etc/bash.bashrc
RUN echo " " >> /etc/bash.bashrc

CMD ["/bin/bash"]