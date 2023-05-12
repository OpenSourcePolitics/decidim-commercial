FROM ruby:2.7.5

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV RAILS_ENV=production
ENV RAILS_LOG_TO_STDOUT=true
ENV PORT=3000
ENV SECRET_KEY_BASE=f97271c0788641d98a8a7feaa2b8b40fdc28f83285a4f23703abdaf3ac0641a4f047788fd15e4b698e026325ebda371573c370fd6a3bdb720d7e04a580b84882
ENV RAILS_SERVE_STATIC_FILES=true

WORKDIR /app

# Install NodeJS
RUN --mount=type=cache,target=/var/cache/apt \
    curl https://deb.nodesource.com/setup_16.x | bash && \
    apt install -y nodejs && \
    apt update && \
    npm install -g npm@8.19.2 && \
    npm install --global yarn && \
    apt install -y libicu-dev postgresql-client && \
    gem install bundler:2.2.17 && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile* ./
RUN bundle config set --local without 'development test' && bundle install

COPY package* ./
COPY yarn.lock .
RUN yarn install

COPY . .

RUN bundle exec bootsnap precompile --gemfile app/ lib/ config/ bin/ db/ && bundle exec rails assets:precompile

# Configure endpoint.
COPY ./entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
