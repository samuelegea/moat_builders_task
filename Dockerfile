# syntax=docker/dockerfile:1
FROM ruby:3.0.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /moatbuilders_task
COPY ./Gemfile* ./
RUN bundle install
RUN rails webpacker:install
COPY ./ ./


# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3333

# Configure the main process to run when running the image
CMD ["rails", "server", "-p", "3333", "-b", "0.0.0.0"]
