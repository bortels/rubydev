# See https://blog.codeship.com/build-minimal-docker-container-ruby-apps/
FROM alpine:3.2
MAINTAINER tom.bortels@digitalinsight.com
ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler ruby-nokogiri
ENV UTIL_PACKAGES ca-certificates wget git vim redis jq grep
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    apk add $UTIL_PACKAGES && \
    rm -rf /var/cache/apk/*
RUN mkdir /app
ENV HOME /app
WORKDIR /app
COPY Gemfile /app/
COPY Gemfile.lock /app/
RUN bundle install
CMD bash
