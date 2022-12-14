FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim
RUN mkdir /myapp

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile

RUN bundle config set force_ruby_platform true
RUN bundle install
COPY . /myapp