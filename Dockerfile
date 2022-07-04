FROM python:3.10

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential libssl-dev libffi-dev \
    postgresql-client libpq-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip3.10 install --no-cache-dir --upgrade pip

# to show docker logs properly
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code/

RUN pip3.10 install --no-cache-dir -r requirements.txt

COPY . /code