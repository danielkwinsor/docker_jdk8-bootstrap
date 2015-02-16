# ubuntu -> jdk8
FROM dockerfile/ubuntu
MAINTAINER Daniel Winsor<danielkwinsor@gmail.com>

RUN add-apt-repository ppa:webupd8team/java \
    && apt-get update \
    && echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections \
    && apt-get install -y --no-install-recommends \
        oracle-java8-set-default

ENV JAVA_HOME /usr/bin
