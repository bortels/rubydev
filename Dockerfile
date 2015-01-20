FROM ruby:2.1.5
MAINTAINER tom.bortels@digitalinsight.com
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install curl wget git vim redis-tools jq apt-utils
# The following errors, which bugs me. 
# RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
RUN mkdir /app
ENV HOME /app
WORKDIR /app
ADD Gemfile /app/
ADD Gemfile.lock /app/
EXPOSE 4567
RUN bundler install
