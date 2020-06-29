FROM ruby:2.7.1

RUN apt-get update && apt-get install -y postgresql-client

RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
COPY . .

EXPOSE 3001
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3001"]