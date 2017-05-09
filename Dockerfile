FROM ubuntu:17.04

# Add dependency
RUN apt-get update && apt-get install --yes python python-dev build-essential python-pip python-setuptools git

RUN  adduser --disabled-password --gecos "Default Jupyter user" jovyan

# Install Python requirements
ADD requirements.txt requirements.txt

# Tifffiles requires we install numpy before attempting to install it
RUN pip install numpy
RUN pip install -r requirements.txt
RUN pip install git+https://github.com/yuvipanda/jupyterhub-legacy-py2-singleuser@master
