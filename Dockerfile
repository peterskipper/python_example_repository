# https://pythonspeed.com/docker/

FROM python:3.7-slim-buster

WORKDIR /python_example_repository

RUN apt-get update && apt-get install -y vim # base packages first

ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}

COPY requirements.txt requirements-dev.txt ./ # no src code yet

RUN pip install -U pip-tools && \
    pip-sync requirements.txt requirements-dev.txt

COPY . .
