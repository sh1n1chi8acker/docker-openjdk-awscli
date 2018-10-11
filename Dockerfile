FROM circleci/openjdk:8-jdk-browsers

USER root

RUN set -ex \
    && apt-get update && apt-get install -y \
        python-dev \
        shellcheck \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://bootstrap.pypa.io/get-pip.py | python

RUN set -ex \
    && pip install -U setuptools \
    && pip install awscli

USER circleci
