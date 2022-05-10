# frozen_string_literal: true

class DBDumpJob < ApplicationJob
  queue_as :reset

  def perform
    # rubocop:disable Layout/LineLength
    system("pg_dump -Fc #{Rails.configuration.database_configuration[Rails.env]["database"]} >./db/dumps/#{Rails.configuration.database_configuration[Rails.env]["database"]}-$(date +%Y%m%d%H%M%S).sql")
    # rubocop:enable Layout/LineLength
  end
end
