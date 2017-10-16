FROM circleci/openjdk:8-jdk

RUN sudo apt-get update && sudo apt-get install -y \
    python-dev \
    python-pip \
    shellcheck \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/*
RUN sudo pip install awscli

