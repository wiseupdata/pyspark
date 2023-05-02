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
    apt-transport-https  \
    build-essential  \
    ca-certificates  \
    curl  \
    file \
    gettext \
    git \
    libasound2 \
    libbz2-dev \
    libcurl4-gnutls-dev \
    libexpat1-dev \
    libffi-dev \
    libfontconfig1 \
    libgconf-2-4 \
    libghc-zlib-dev \
    liblzma-dev \
    libncursesw5-dev \
    libnss3 \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxi6 \
    libxml2-dev \
    libxmlsec1-dev \
    llvm \
    lsb-release \
    make \
    procps \
    sudo \
    tk-dev \
    unzip \
    wget \
    xvfb \
    xz-utils \
    zip \
    zlib1g-dev \
    sudo \
    software-properties-common

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