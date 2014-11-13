FROM ruby:2.1.4
MAINTAINER tom.bortels@digitalinsight.com
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install curl wget git vim redis-tools
RUN mkdir /app
ENV HOME /app
WORKDIR /app
ADD Gemfile /app/
ADD Gemfile.lock /app/
RUN bundler install
