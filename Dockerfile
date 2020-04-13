FROM docker:latest

RUN apk update apk add python python-dev py-pip build-base python libffi-dev openssl-dev
RUN pip --no-cache-dir install docker-compose
RUN rm -f /var/cache/apk/* && rm -rf /root/.cache
