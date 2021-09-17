FROM python:3.9.7-alpine3.14

LABEL maintainer="smith404@live.com"

RUN apk update

WORKDIR /srv/server

ENV ENV="/root/.ashrc"

COPY ./docker/dev.start.sh /tmp/start.sh

CMD ["ash", "/tmp/start.sh"]
