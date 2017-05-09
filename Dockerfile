FROM ubuntu:17.04

# Add dependency
RUN apt-get update && apt-get install --yes python2 python2-dev build-essential python2-pip python2-setuptools git

# Install Python requirements
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install git+https://github.com/yuvipanda/jupyterhub-legacy-py2-singleuser@master
