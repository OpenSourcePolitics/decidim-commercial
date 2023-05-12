# frozen_string_literal: true

source "https://rubygems.org"

DECIDIM_VERSION = "0.26.5"

ruby RUBY_VERSION

gem "decidim", DECIDIM_VERSION

gem "decidim-conferences", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION

gem "decidim-decidim_awesome", "~> 0.8.1"
gem "decidim-friendly_signup", git: "https://github.com/OpenSourcePolitics/decidim-module-friendly_signup.git", branch: "main"
gem "decidim-homepage_interactive_map", git: "https://github.com/OpenSourcePolitics/decidim-module-homepage_interactive_map.git", branch: "release/0.26-stable"
gem "decidim-spam_detection"
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer.git", branch: "release/0.26-stable"
gem "decidim-url_aliases", git: "https://github.com/OpenSourcePolitics/decidim-urlaliases.git", branch: "master"
gem "omniauth-france_connect", git: "https://github.com/OpenSourcePolitics/omniauth-france_connect", branch: "main"
gem "omniauth-publik", git: "https://github.com/OpenSourcePolitics/omniauth-publik"

gem "bootsnap", "~> 1.4"

gem "deepl-rb", require: "deepl"

gem "dotenv-rails"

gem "omniauth-rails_csrf_protection", "~> 1.0"

gem "puma", "~> 5.0.0"
gem "uglifier", "~> 4.1"

gem "faker", "~> 2.14"

gem "ruby-progressbar"

gem "letter_opener_web", "~> 1.3"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri
  gem "climate_control", "~> 1.2"

  gem "decidim-dev", DECIDIM_VERSION
  # gem "decidim-dev", path: "../decidim"
end

group :development do
  gem "listen", "~> 3.1"
  gem "rubocop-faker"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  # gem "rubocop-rails"
  gem "dalli"
  gem "health_check", "~> 3.1"
  gem "fog-aws"
  gem "lograge"
  gem "newrelic_rpm"
  gem "passenger"
  gem "sendgrid-ruby"
  gem "sentry-rails"
  gem "sentry-ruby"
  gem "sentry-sidekiq"
  gem "sidekiq"
  gem "sidekiq_alive", "~> 2.2"
  gem "sidekiq-scheduler"
end
