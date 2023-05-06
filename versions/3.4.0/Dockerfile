#########################################################
# Oficial Python Image based in Ubuntu
#########################################################
# Ubuntu 23.04
FROM wiseupdata/python:3.10

LABEL maintainer="silvio liborio"


###############################################################################
RUN echo "Initial setup and envs" 
##############################################################################

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux
ENV JAVA_OPEN_JDK="OpenJDK8U-jdk_x64_linux_hotspot_8u372b07"

# Define en_US types for the environmet
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_MESSAGES en_US.UTF-8

ARG spark_uid=185

RUN echo "Clean up unnecessary files and directories"

RUN rm -rf /tmp/* && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/*

RUN apt-get update && apt-get upgrade -y


##############################################################################
RUN echo "Installing Java 8"
##############################################################################
RUN cd /opt && \
    wget https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u372-b07/${JAVA_OPEN_JDK}.tar.gz && \
    tar -xzf ${JAVA_OPEN_JDK}.tar.gz && \
    rm ${JAVA_OPEN_JDK}.tar.gz && \
    mv jdk* java

RUN echo "Setting the Java"
RUN ln -s /opt/java/bin/java /usr/local/bin/java && \
    ln -s /opt/java/bin/javac /usr/local/bin/javac && \
    update-alternatives --install /usr/bin/java java /usr/local/bin/java 1 && \
    update-alternatives --install /usr/bin/javac javac /usr/local/bin/javac 1

RUN echo "Java installed $(java -version)"


##############################################################################
RUN echo "Creating the user spark and paths"
##############################################################################

RUN groupadd --system --gid=${spark_uid} spark && \
    useradd --system --uid=${spark_uid} --gid=spark spark

RUN set -ex && \
    ln -s /lib /lib64 && \
    mkdir -p /opt/spark && \
    mkdir /opt/spark/python && \
    mkdir -p /opt/spark/examples && \
    mkdir -p /opt/spark/work-dir && \
    chmod g+w /opt/spark/work-dir && \
    touch /opt/spark/RELEASE && \
    chown -R spark:spark /opt/spark && \
    rm /bin/sh && \
    ln -sv /bin/bash /bin/sh && \
    echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su && \
    chgrp root /etc/passwd && chmod ug+rw /etc/passwd 


##############################################################################
RUN echo "Installing Spark"
##############################################################################

# https://downloads.apache.org/spark/KEYS
ENV SPARK_TGZ_URL=https://archive.apache.org/dist/spark/spark-3.4.0/spark-3.4.0-bin-hadoop3.tgz \
    SPARK_TGZ_ASC_URL=https://archive.apache.org/dist/spark/spark-3.4.0/spark-3.4.0-bin-hadoop3.tgz.asc \
    GPG_KEY=CC68B3D16FE33A766705160BA7E57908C7A4E1B1


RUN set -ex; \
    export SPARK_TMP="$(mktemp -d)"; \
    cd $SPARK_TMP; \
    wget -nv -O spark.tgz "$SPARK_TGZ_URL"; \
    wget -nv -O spark.tgz.asc "$SPARK_TGZ_ASC_URL"; \
    export GNUPGHOME="$(mktemp -d)"; \
    gpg --keyserver hkps://keys.openpgp.org --recv-key "$GPG_KEY" || \
    gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY"; \
    gpg --batch --verify spark.tgz.asc spark.tgz; \
    gpgconf --kill all; \
    rm -rf "$GNUPGHOME" spark.tgz.asc; \
    \
    tar -xf spark.tgz --strip-components=1; \
    chown -R spark:spark .; \
    mv jars /opt/spark/; \
    mv bin /opt/spark/; \
    mv sbin /opt/spark/; \
    mv kubernetes/dockerfiles/spark/decom.sh /opt/; \
    mv examples /opt/spark/; \
    mv kubernetes/tests /opt/spark/; \
    mv data /opt/spark/; \
    mv python/pyspark /opt/spark/python/pyspark/; \
    mv python/lib /opt/spark/python/lib/; \
    mv R /opt/spark/; \
    chmod a+x /opt/decom.sh; \
    cd ..; \
    rm -rf "$SPARK_TMP";
    

##############################################################################
RUN echo "Setting the Spark application to the users"
##############################################################################

RUN export SPARK_HOME=/opt/spark
ENV SPARK_HOME=/opt/spark

# Add Spark bin directory to PATH
ENV PATH=$PATH:$SPARK_HOME/bin

# Create symbolic links for spark-shell and pyspark
RUN ln -s $SPARK_HOME/bin/spark-shell /usr/local/bin/spark && \
    ln -s $SPARK_HOME/bin/pyspark /usr/local/bin/pyspark


##############################################################################
RUN echo "Setting Spark variables for all user"
##############################################################################
# RUN echo "source /etc/profile" >> /etc/bash.bashrc
# TODO: Not working in Ubuntu 23, could be anything, try to fix it in the future to not be so verbose in the code as the next lines!

# Spark envs to all Bourne-compatible shells.
RUN echo " " >> /etc/profile && \
    echo "export SPARK_HOME=/opt/spark" >> /etc/profile && \
    echo "export PYTHONPATH=$SPARK_HOME/python:${SPARK_HOME}/python/lib/pyspark.zip:$SPARK_HOME/python/lib/py4j-0.10.9.7-src.zip" >> /etc/profile && \
    echo "export PYSPARK_PYTHON=/usr/local/bin/python" >> /etc/profile && \
    echo "export PYSPARK_DRIVER_PYTHON=/usr/local/bin/python" >> /etc/profile && \
    echo "export PYLIB=$SPARK_HOME/python/lib" >> /etc/profile && \
    echo " " >> /etc/profile

# Spark envs to all bashrc shells.
RUN echo " " >> /etc/bash.bashrc && \
    echo "export SPARK_HOME=/opt/spark" >> /etc/bash.bashrc && \
    echo "export PYTHONPATH=$SPARK_HOME/python:${SPARK_HOME}/python/lib/pyspark.zip:$SPARK_HOME/python/lib/py4j-0.10.9.7-src.zip" >> /etc/bash.bashrc  && \
    echo "export PYSPARK_PYTHON=/usr/local/bin/python" >> /etc/bash.bashrc && \
    echo "export PYSPARK_DRIVER_PYTHON=/usr/local/bin/python" >> /etc/bash.bashrc && \
    echo "export PYLIB=$SPARK_HOME/python/lib" >> /etc/bash.bashrc && \
    echo " " >> /etc/bash.bashrc


##############################################################################
RUN echo "Installing Kubectl - Official steps"
##############################################################################
RUN curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
RUN sudo apt-get update -y
RUN apt-get install -y kubectl

##############################################################################
RUN echo "Installing support to R - Official steps"
##############################################################################
RUN set -ex && \
    apt install -y r-base r-base-dev


##############################################################################
# Final steps
##############################################################################
COPY jars/* /opt/spark/jars/
COPY scripts/entrypoint.sh /opt/
RUN  chmod a+x /opt/entrypoint.sh

RUN rm -rf /tmp/* && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/*

# Specify the User that the actual main process will run as
WORKDIR /opt/spark/work-dir
USER spark
ENTRYPOINT [ "/opt/entrypoint.sh" ]