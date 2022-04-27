FROM docker:20.10.8-alpine3.13

USER root

RUN apk update && \
    apk add --no-cache bash curl jq python3 py-pip openssh-client
    
RUN pip install awscli

