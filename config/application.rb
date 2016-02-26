require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module SachmemForum
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.time_zone = 'Hanoi'
    config.i18n.default_locale = :vi
  end
end
