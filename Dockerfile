FROM docker:latest

RUN apk update \
    && apk add \
    python \
    python3 \
    python3-dev \
    build-base \
    gcc \
    libc-dev \
    libffi-dev \
    openssl-dev

RUN pip3 --no-cache-dir install docker-compose
RUN rm -f /var/cache/apk/* && rm -rf /root/.cache

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
