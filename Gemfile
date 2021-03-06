# frozen_string_literal: true

source "https://rubygems.org"

DECIDIM_VERSION = "0.24.3"

ruby RUBY_VERSION

gem "decidim", DECIDIM_VERSION
# gem "decidim", path: "../decidim"

gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-consultations", git: "https://github.com/decidim/decidim.git", branch: "release/0.23-stable"
gem "decidim-initiatives", DECIDIM_VERSION

gem "decidim-decidim_awesome", "~> 0.7.0"
# gem "decidim-homepage_interactive_map", git: "https://github.com/OpenSourcePolitics/decidim-module-homepage_interactive_map.git"
gem "decidim-navigation_maps", "~> 1.2.0"
# gem "decidim-question_captcha", git: "https://github.com/OpenSourcePolitics/decidim-module-question_captcha.git", branch: "master"
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer.git", branch: "master"
gem "decidim-url_aliases", git: "https://github.com/OpenSourcePolitics/decidim-urlaliases.git", branch: "master"

# gem "decidim-calendar", git: "https://github.com/alabs/decidim-module-calendar"
# gem "decidim-combined_budgeting", git: "https://github.com/mainio/decidim-module-combined_budgeting"
# gem "decidim-comparative_stats", git: "https://github.com/Platoniq/decidim-module-comparative_stats"
# gem "decidim-direct_verifications", git: "https://github.com/Platoniq/decidim-verifications-direct_verifications"
# gem "decidim-initiatives_no_signature_allowed", git: "https://github.com/OpenSourcePolitics/decidim-module-initiatives_nosignature_allowed.git"

gem "acts_as_textcaptcha", "~> 4.5.1"

gem "bootsnap", "~> 1.4"

gem "dotenv-rails"

gem "puma", "~> 5.0.0"
gem "uglifier", "~> 4.1"

gem "faker", "~> 2.14"

gem "ruby-progressbar"

gem "letter_opener_web", "~> 1.3"

gem "sprockets", "~> 3.7"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

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
  gem "fog-aws"
  gem "lograge"
  gem "newrelic_rpm"
  gem "passenger"
  gem "sendgrid-ruby"
  gem "sentry-rails"
  gem "sentry-ruby"
  gem "sentry-sidekiq"
  gem "sidekiq"
  gem "sidekiq-scheduler"
end
