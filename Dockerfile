FROM python:3.11.3-alpine3.18
LABEL mantainer="joaofeitoza.13@gmail.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./ /tv_cms

WORKDIR /tv_cms

EXPOSE 8000

RUN apk update && apk add bash && apk add git && \
  git clone
  pip install "poetry==1.5.1" && \
  poetry install && \
  adduser --disabled-password --no-create-home developer && \
  mkdir -p /data/web/static && \
  mkdir -p /data/web/media && \
  chown -R developer:developer /data/web/static && \
  chown -R developer:developer /data/web/media && \
  chmod -R 755 /data/web/static && \
  chmod -R 755 /data/web/media

ENV PATH="/scripts:$PATH"

USER developer 
