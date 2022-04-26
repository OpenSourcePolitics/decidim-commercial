# frozen_string_literal: true

class DBResetJob < ApplicationJob
  queue_as :reset

  def perform
    raise "Cannot perform this action, set PERFORM_RESET=1 to execute" if ENV["PERFORM_RESET"].to_i != 1
    raise "A dumpfile must be provided" if dump_file.nil?

    commands.each do |command|
      system(command)
    end
  end

  private

  def commands
    [
      "psql -c 'REVOKE CONNECT ON DATABASE #{database_name} FROM public'",
      "psql -c 'ALTER DATABASE #{database_name} allow_connections = off'",
      "psql -c 'SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity'",
      "psql -c 'DROP DATABASE #{database_name} WITH (FORCE)'",
      "psql -c 'CREATE DATABASE #{database_name}'",
      "pg_restore -v -d #{database_name} #{dump_file}",
      "bundle exec rails db:migrate"
    ]
  end

  def dump_file
    @dump_file ||= Dir.glob(Rails.root.join("db/dumps/*.sql")).max
  end

  def database_name
    Rails.configuration.database_configuration[Rails.env]["database"]
  end
end
