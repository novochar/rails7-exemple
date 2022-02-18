FROM ruby:3.0.0-slim
WORKDIR /usr/src/app

RUN apt-get update -y
RUN apt-get install cmake libsqlite3-dev -y
COPY . .
RUN bundle install

CMD rails s -b 0.0.0.0 -p 3000
