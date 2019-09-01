# Creating image based on official python3 image
FROM python:3.7-alpine

# Your contacts, so people blame you afterwards
LABEL maintainer="Pavel Gasanov <seanlau@gmail.com>"

# Sets dumping log messages directly to stream instead of buffering
ENV PYTHONUNBUFFERED 1
#  Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir -p /var/log/gunicorn

# set work directory
# copy project
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
# WORKDIR /app
COPY . /usr/src/app/

EXPOSE 8000

# # install psycopg2
# RUN apk update \
#   && apk add --virtual build-deps gcc python3-dev musl-dev \
#   && apk add postgresql-dev \
#   && pip install psycopg2 \
#   && apk del build-deps


# install dependencies
RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --system --deploy


# copy entrypoint.sh
COPY ./on-container-start.sh /usr/src/app/on-container-start.sh

ENTRYPOINT ["/usr/src/app/on-container-start.sh"]


# COPY ./on-container-start.sh //app/on-container-start.sh


# # dev
# # Creating image based on official python3 image
# FROM python:3.6-alpine

# # Your contacts, so people blame you afterwards
# LABEL maintainer="Pavel Gasanov <seanlau@gmail.com>"

# # Sets dumping log messages directly to stream instead of buffering
# ENV PYTHONUNBUFFERED 1
# #  Prevents Python from writing pyc files to disc
# ENV PYTHONDONTWRITEBYTECODE 1

# # set work directory
# # copy project
# WORKDIR /usr/src
# COPY . /usr/src/


# # install psycopg2
# RUN apk update \
#   && apk add --virtual build-deps gcc python3-dev musl-dev \
#   && apk add postgresql-dev \
#   && pip install psycopg2 \
#   && apk del build-deps


# # install dependencies
# RUN pip install --upgrade pip
# RUN pip install pipenv
# RUN pipenv install --system --deploy

