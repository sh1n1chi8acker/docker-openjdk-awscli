FROM circleci/openjdk:8-jdk-browsers

USER root

RUN set -ex \
    && apt-get update && apt-get install -y \
        python-dev \
        python-pip \
        shellcheck \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && pip install -U pip setuptools \
    && pip install awscli

USER circleci
