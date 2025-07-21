FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl

COPY xray /usr/local/bin/xray
COPY config.json /app/config.json

WORKDIR /app

CMD ["xray", "-config", "/app/config.json"]
