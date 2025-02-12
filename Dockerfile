FROM jenkins/jenkins:2.497-jdk17
LABEL maintainer="Analyser <analyser@gmail.com>"

ARG user=jenkins
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Asia/Shanghai

# Switch to root user to install packages and configure timezone
USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    rm -rf /var/lib/apt/lists/*

# Switch back to jenkins user
USER ${user}
