FROM python:3.7-alpine
MAINTAINER sserges

ENV PYTHONUNBUFFERED 1

RUN adduser -D user
USER user

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app


