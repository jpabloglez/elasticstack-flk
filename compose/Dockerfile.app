FROM python:3.10-slim-buster

WORKDIR /opt/app

COPY setup/requirements.txt .

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip git \
    && rm -rf /var/lib/apt/lists/* 


RUN pip3 install --upgrade pip \
    && pip3 install --upgrade setuptools \
    && pip install -r requirements.txt

RUN git clone https://github.com/s4tori/fake-logs.git

EXPOSE 8080

