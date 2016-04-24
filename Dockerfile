FROM alpine:3.3

RUN apk --update add build-base python python-dev py-pip py-gunicorn curl
COPY start.sh /usr/bin/start.sh

VOLUME /app
WORKDIR /app

ENV PARAMS="--bind 0.0.0.0:8000 --access-logfile - --reload bender.facebook.app:app"
EXPOSE 8000

ENTRYPOINT /usr/bin/start.sh
