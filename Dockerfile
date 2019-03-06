FROM ruby:slim

RUN apt-get -y update && apt-get -y upgrade &&\
    apt-get -y install make && apt-get -y install gcc

WORKDIR /app
COPY . /app

RUN bundle install
