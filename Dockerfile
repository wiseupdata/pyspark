#########################################################
# Oficial Python Image based in Ubuntu
#########################################################
# Ubuntu 23.04
FROM ubuntu:lunar 

LABEL maintainer="silvio liborio"

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

# Define en_US types for the environmet
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_MESSAGES en_US.UTF-8

# Update package list
RUN apt-get update && apt-get upgrade -y

##############################################################################
# Install dependencies 
##############################################################################
RUN apt-get install -y \
    apt-transport-https=2.6.0  \
    build-essential=12.9ubuntu3  \
    ca-certificates=20230311  \
    curl=7.88.1-7ubuntu1  \
    file=1:5.44-3 \
    firefox=1:1snap1-0ubuntu3 \
    gettext=0.21-11 \
    git=1:2.39.2-1ubuntu1 \
    gnupg=2.2.40-1ubuntu2 \
    gnupg2=2.2.40-1ubuntu2 \
    libasound2:amd64=1.2.8-1build1 \
    libbz2-dev:amd64=1.0.8-5build1 \
    libcurl4-gnutls-dev:amd64=7.88.1-7ubuntu1 \
    libexpat1-dev:amd64=2.5.0-1 \
    libffi-dev:amd64=3.4.4-1 \
    libfontconfig1:amd64=2.14.1-3ubuntu3 \
    libgconf-2-4:amd64=3.2.6-8ubuntu1 \
    libghc-zlib-dev=0.6.3.0-1build3 \
    liblzma-dev:amd64=5.4.1-0.2 \
    libncursesw5-dev:amd64=6.4-2 \
    libnss3:amd64=2:3.87.1-1 \
    libreadline-dev:amd64=8.2-1.3 \
    libsqlite3-dev:amd64=3.40.1-1 \
    libssl-dev:amd64=3.0.8-1ubuntu1 \
    libxi6:amd64=2:1.8-1build1 \
    libxml2-dev:amd64=2.9.14+dfsg-1.1build2 \
    libxmlsec1-dev=1.2.37-2 \
    llvm=1:15.0-56~exp2 \
    lsb-release=12.0-1ubuntu1 \
    make=4.3-4.1build1 \
    procps=2:4.0.3-1ubuntu1 \
    sudo=1.9.13p1-1ubuntu2 \
    tk-dev:amd64=8.6.13 \
    unzip=6.0-27ubuntu1 \
    wget=1.21.3-1ubuntu1 \
    xvfb=2:21.1.7-1ubuntu2 \
    xz-utils=5.4.1-0.2 \
    zip=3.0-13 \
    zlib1g-dev:amd64=1:1.2.13.dfsg-1ubuntu4 \
    sudo=1.9.13p1-1ubuntu2 \
    software-properties-common=0.99.35

##############################################################################
# Preparer the user
##############################################################################
RUN usermod -aG sudo ubuntu
RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/ubuntu

##############################################################################
# Install Python 3.9 # More stable for production
##############################################################################
RUN wget https://www.python.org/ftp/python/3.9.12/Python-3.9.12.tgz && \
    tar -xf Python-3.9.12.tgz && \
    cd Python-3.9.12 && \
    ./configure --enable-optimizations && \
    make -j$(nproc) && \
    sudo make altinstall
RUN ln -s /usr/local/bin/python3.9 /usr/local/bin/python && \
    ln -s /usr/local/bin/pip3.9 /usr/local/bin/pip

RUN pip install --upgrade pip