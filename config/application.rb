require File.expand_path('../boot', __FILE__)
require "rails"
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module SachmemForum
  class Application < Rails::Application
    config.time_zone = 'Hanoi'
    config.i18n.default_locale = :vi
    config.exceptions_app = self.routes
  end
end
