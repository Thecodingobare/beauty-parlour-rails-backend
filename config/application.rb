require_relative "boot"

require "rails"
require "bcrypt"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BeautyParlour
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

  config.middleware.use ActionDispatch::Cookies

  config.middleware.use ActionDispatch::Session::CookieStore

  config.action_dispatch.cookies_same_site_protection = :strict
    config.api_only = true
  end
end
