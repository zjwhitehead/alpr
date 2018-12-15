FROM circleci/ruby:2.3.8
USER root
RUN apt-get update && sudo apt-get install -y openalpr openalpr-daemon openalpr-utils libopenalpr-dev
RUN mkdir /alpr
RUN chown -R circleci:circleci /alpr
USER circleci
WORKDIR /alpr
COPY . /alpr
RUN bundle install
COPY . /alpr
