FROM node:10-slim

ARG cache=v1

RUN apt-get update && \
    apt-get update && apt-get install -y curl xvfb chromium

RUN npm install lighthouse -g --unsafe-perm

ENV CI=true

VOLUME /home/app/lighthouse

ENTRYPOINT [ "lighthouse","--output=json", "--output-path=/home/app/lighthouse/report.json", "--chrome-flags=--headless --no-sandbox"]
