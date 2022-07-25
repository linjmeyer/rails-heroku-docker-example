# Generic Ruber Dockerfile that install a rails monolith
# Defaults to running puma, but entrypoint can be overridden for other uses (e.g. workers)
FROM ruby:2.7.6
WORKDIR /app

# First copy gem files, if they haven't changed the bundle step can be skipped for a cached version
COPY Gemfile* .
RUN bundle install

# Copy remaining app files
COPY . .

# Run a shell
ENTRYPOINT [ "bundle", "exec", "puma" ]