FROM python:3.7-alpine
MAINTAINER JOSEFNORLIN AB

ENV PYTHONUNBUFFEFRED 1

# Copies the file to docker
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Copies the app to docker
RUN mkdir /app 
WORKDIR /app
COPY ./app /app

# D means running applications only.
# User instead of running as root
RUN adduser -D user
USER user