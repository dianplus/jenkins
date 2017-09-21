FROM jenkins/jenkins:lts
MAINTAINER Analyser, analyser@gmail.com

ARG user=jenkins

USER root

RUN apt-get update && \
    apt-get install -y lib32stdc++6 lib32z1 && \
    rm -rf /var/lib/apt/lists/*

USER ${user}
