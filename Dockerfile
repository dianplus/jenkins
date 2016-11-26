FROM jenkins:latest
MAINTAINER Analyser, analyser@gmail.com

USER root

RUN apt-get update && \
    apt-get install -y lib32stdc++6 lib32z1 && \
    rm -rf /var/lib/apt/lists/*
    
USER jenkins
