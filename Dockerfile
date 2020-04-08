# https://pythonspeed.com/docker/

FROM python:3.7-slim-buster

# base packages first
RUN apt-get update && apt-get install -y vim 

ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}

# no src code yet
COPY requirements.txt requirements-dev.txt ./

RUN pip install -U pip-tools && \
    pip-sync requirements.txt requirements-dev.txt

COPY . .
