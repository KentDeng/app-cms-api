FROM python:3.7-alpine
MAINTAINER KENT

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt -i http://mirrors.aliyun.com/pypi/simple/   --trusted-host mirrors.aliyun.com

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
