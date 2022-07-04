ARG PY_VERSION=3.10

FROM python:$PY_VERSION

RUN apt update \
    && apt install -y --no-install-recommends \
    build-essential libssl-dev libffi-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip$PY_VERSION install --no-cache-dir --upgrade pip
# to show docker logs properly
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code/

RUN pip$PY_VERSION install --no-cache-dir -r requirements.txt

COPY . /code