FROM ruby:latest

ARG RUBYGEMS_VERSION=3.4.6

RUN mkdir /api

WORKDIR /api

COPY Gemfile /api/Gemfile

COPY Gemfile.lock /api/Gemfile.lock

RUN gem update --system ${RUBYGEMS_VERSION} && \
bundle install

COPY . /api

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

CMD [ "rails","server","-b","0.0.0.0" ]
