# pull base image
FROM python:3.7

# set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work dir
WORKDIR /code

# install deps
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

# copy project
COPY . /code/