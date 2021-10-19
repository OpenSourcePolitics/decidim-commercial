# frozen_string_literal: true

if defined?(Decidim::QuestionCaptcha)
  Decidim::QuestionCaptcha.configure do |config|
    config.api_endpoint = ENV["API_ENDPOINT"]
  end
end
