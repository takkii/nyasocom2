require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NyasocomAct2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    Rails.application.config.assets.unknown_asset_fallback = true
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.fallbacks = true
    config.i18n.fallbacks = [I18n.default_locale]
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.time_zone = 'Tokyo'
    config.generators.javascript_engine = :js
    config.active_record.default_timezone = :local
  end
end
