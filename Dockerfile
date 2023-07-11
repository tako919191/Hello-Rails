# Pull ruby image
FROM ruby:3.2.2

# ENV
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

# Install
RUN apt-get update -qq && \
    apt-get install -y build-essential

# Create working directory
ENV APP_ROOT /Hello-Rails
RUN mkdir $APP_ROOT

# Set working directory as APP_ROOT
WORKDIR $APP_ROOT

# Add Gemfile
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Install Gemfile's bundle
RUN bundle install
ADD . $APP_ROOT
