require "sprockets/railtie"
Rails.application.configure do
  # Code is not reloaded between requests.
  config.cache_classes = false
  config.reload_classes_only_on_change = false

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Compress JavaScripts and CSS.
  # config.assets.debug = true
  # config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :scss
  config.assets.debug = true

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  # Load assets and puclic forder
  config.assets.compile = true
  config.serve_static_files = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :warn

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new
end
