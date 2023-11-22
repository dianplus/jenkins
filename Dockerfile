FROM jenkins/jenkins:latest
MAINTAINER Analyser, analyser@gmail.com

ARG user=jenkins
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Asia/Shanghai

USER root

COPY sources.list        /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata

USER ${user}
