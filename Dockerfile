# Dockerfile

FROM ruby:3.1.2

WORKDIR /
COPY . /
RUN bundle install

EXPOSE 8080

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "8080"]
