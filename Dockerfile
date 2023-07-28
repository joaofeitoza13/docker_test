FROM python:3.11.3-slim-buster
LABEL mantainer="joaofeitoza.13@gmail.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install git make musl-dev python3-dev -y

COPY ./ /home/duser/tv_cms

WORKDIR /home/duser/tv_cms

EXPOSE 8000

RUN \
  pip install --upgrade pip && \
  pip install "poetry==1.5.1" && \
  useradd -rm -d /home/duser -s /bin/bash -g root -G sudo -u 1001 duser && \
  echo "duser:duser" | chpasswd && \
  mkdir -p /data/web/static && \
  mkdir -p /data/web/media && \
  chown -R duser:root /home/duser && \
  chown -R duser:root /data/web/static && \
  chown -R duser:root /data/web/media && \
  chmod -R 777 /home && \
  chmod -R 755 /data/web/static && \
  chmod -R 755 /data/web/media

ENV PATH="/scripts:$PATH"

USER duser
