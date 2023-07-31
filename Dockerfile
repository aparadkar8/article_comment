  FROM ruby:3.0.0
  RUN apt-get update && apt-get install -y nodejs
  WORKDIR /app
  COPY Gemfile* .
  RUN gem install bundler -v 2.3.26
  RUN gem update --system 3.0.0
  RUN bundle install
  COPY . .
  EXPOSE 3000
  CMD ["rails", "server", "-b", "0.0.0.0"]

  # FROM ruby:2.5.9-alpine
  # RUN apk add \
  #   build-base \
  #   tzdata \
  
  # WORKDIR /app
  # COPY Gemfile* .
  # RUN gem install bundler -v 2.3.26
  # RUN gem update --system 3.0.0
  # RUN bundle install
  # COPY . .
  # EXPOSE 3000
  # CMD ["rails", "server", "-b", "0.0.0.0"]