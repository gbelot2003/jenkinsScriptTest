FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python python-pip -y
RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pytest
RUN mkdir /opt/app

COPY src/ /opt/app

COPY docker-entrypoint.sh /

RUN chmod +x docker-entrypoint.sh

EXPOSE 5000
ENTRYPOINT "/docker-entrypoint.sh"