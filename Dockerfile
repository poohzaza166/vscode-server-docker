FROM ubuntu:21.04

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils systemd  curl -y

RUN curl -fsSL https://code-server.dev/install.sh | sh

RUN mkdir /root/save-code

WORKDIR .

COPY config.yaml /root/.config/code-server/config.yaml

EXPOSE 8080

#VOLUME [/save-code]


CMD code-server
