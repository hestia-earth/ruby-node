FROM ruby:2.6.3
LABEL maintainer "Guillaume Royer <guillaume@hestia.earth>"

# install latest version of NodeJS 18
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs

# install bundler
RUN gem install bundler
