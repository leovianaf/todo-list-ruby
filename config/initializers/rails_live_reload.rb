# frozen_string_literal: true

RailsLiveReload.configure do |config|
  # config.url = "/rails/live/reload"

  # Default watched folders & files
  config.watch %r{app/views/.+\.(erb|html|slim)$}, reload: :always
  config.watch %r{(app|vendor)/(assets|javascript)/\w+/(.+\.(css|js|html|png|jpg|ts|jsx)).*}, reload: :always
  config.watch %r{app/assets/stylesheets/.+\.(css|scss|sass)$}, reload: :always

  # More examples:
  # config.watch %r{app/helpers/.+\.rb}, reload: :always
  # config.watch %r{config/locales/.+\.yml}, reload: :always

  config.enabled = Rails.env.development?
end if defined?(RailsLiveReload)
