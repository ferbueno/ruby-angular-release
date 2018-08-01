#Base Ruby image
FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp

WORKDIR /myapp

COPY back/Gemfile /myapp/Gemfile

COPY back/Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY back/ /myapp

EXPOSE 3000

CMD ["rails","server"]