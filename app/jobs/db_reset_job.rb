# frozen_string_literal: true

class DBResetJob < ApplicationJob
  queue_as :reset

  def perform
    raise "Cannot perform this action, set PERFORM_RESET=1 to execute" if ENV["PERFORM_RESET"].to_i != 1

    dump_file = Dir.glob(Rails.root.join("db/dumps/*.sql")).max
    raise "A dumpfile must be provided" if dump_file.nil?

    system(command(dump_file))
  end

  private

  def command(dump_file)
    # rubocop:disable Layout/LineLength
    "psql -c 'SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity' ; psql -c 'DROP DATABASE #{database_name}' && psql -c 'CREATE DATABASE #{database_name}' && pg_restore -v -d #{database_name} #{dump_file}"
    # rubocop:enable Layout/LineLength
  end

  def database_name
    Rails.configuration.database_configuration[Rails.env]["database"]
  end
end
