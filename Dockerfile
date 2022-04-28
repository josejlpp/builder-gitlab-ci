FROM docker:20.10.8-alpine3.13

USER root

RUN apk add --update --no-cache \
    bash \
    curl \
    jq \
    python3 \
    py-pip \
    openssh-client \
    build-base \
    python3-dev \
    libffi-dev \
    libressl-dev \
    git \
    gettext \
    cargo \
    rust
    
RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py
    
RUN pip install --ignore-installed six awscli awsebcli