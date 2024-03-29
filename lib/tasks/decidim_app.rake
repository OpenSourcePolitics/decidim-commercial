# frozen_string_literal: true

require "decidim/admin_creator"
require "decidim/system_admin_creator"

namespace :decidim_app do
  desc "Create admin user with decidim_app:create_admin name='John Doe' nickname='johndoe' email='john@example.org', password='decidim123456' organization_id='1'"
  task create_admin: :environment do
    Decidim::AdminCreator.create!(ENV) ? puts("Admin created successfully") : puts("Admin creation failed")
  end

  desc "Create system user with decidim_app:create_system_admin email='john@example.org', password='decidim123456'"
  task create_system_admin: :environment do
    Decidim::SystemAdminCreator.create!(ENV) ? puts("System admin created successfully") : puts("System admin creation failed")
  end
end
