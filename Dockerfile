FROM ruby:3.0-slim
WORKDIR /usr/src/app

RUN apt-get update -y
RUN apt-get install cmake -y
RUN gem update --system
RUN gem install rails

CMD rails new app

