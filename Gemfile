# frozen_string_literal: true

source "https://rubygems.org"

DECIDIM_VERSION = "0.26"
DECIDIM_BRANCH = "release/#{DECIDIM_VERSION}-stable"

ruby RUBY_VERSION

# Many gems depend on environment variables, so we load them as soon as possible
gem "dotenv-rails", require: "dotenv/rails-now"

gem "decidim", "~> #{DECIDIM_VERSION}.0"
gem "decidim-conferences", "~> #{DECIDIM_VERSION}.0"

# gem "acts_as_textcaptcha", "~> 4.5.1"
gem "decidim-decidim_awesome"
gem "decidim-friendly_signup", git: "https://github.com/OpenSourcePolitics/decidim-module-friendly_signup.git"
gem "decidim-homepage_interactive_map", git: "https://github.com/OpenSourcePolitics/decidim-module-homepage_interactive_map.git", branch: DECIDIM_BRANCH
gem "decidim-ludens", git: "https://github.com/OpenSourcePolitics/decidim-ludens.git", branch: DECIDIM_BRANCH
gem "decidim-phone_authorization_handler", git: "https://github.com/OpenSourcePolitics/decidim-module_phone_authorization_handler", branch: DECIDIM_BRANCH
# gem "decidim-question_captcha", git: "https://github.com/OpenSourcePolitics/decidim-module-question_captcha.git", branch: DECIDIM_VERSION
gem "decidim-spam_detection"
gem "decidim-templates"
gem "decidim-term_customizer", git: "https://github.com/armandfardeau/decidim-module-term_customizer.git", branch: "fix/precompile-on-docker-0.26"
gem "omniauth-france_connect", git: "https://github.com/OpenSourcePolitics/omniauth-france_connect"
gem "omniauth-publik", git: "https://github.com/OpenSourcePolitics/omniauth-publik"

gem "bootsnap", "~> 1.4"
gem "foundation_rails_helper", git: "https://github.com/sgruhier/foundation_rails_helper.git"

gem "puma", ">= 5.5.1"

gem "faker", "~> 2.14"

gem "activejob-uniqueness", require: "active_job/uniqueness/sidekiq_patch"
gem "aws-sdk-s3", require: false
gem "deepl-rb", require: "deepl"
gem "fog-aws"
gem "sys-filesystem"

gem "omniauth-rails_csrf_protection", "~> 1.0"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman", "~> 5.1"
  gem "decidim-dev", "~> #{DECIDIM_VERSION}.0"
  gem "parallel_tests"
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "rubocop-faker"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "4.0.4"
end

group :production do
  gem "dalli"
  gem "lograge"
  gem "sendgrid-ruby"
  gem "sentry-rails"
  gem "sentry-ruby"
  gem "sentry-sidekiq"
  gem "sidekiq"
  gem "sidekiq-scheduler"
end
gem "nokogiri", "1.13.4"

gem "rack-attack", "~> 6.6"
