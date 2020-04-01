require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Corona
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

     # Load all translation files including folders
     config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

     # Permitted locales available for the application
     I18n.available_locales = [:en, :ar]
 
     # Set default locale to something other than :en
     I18n.default_locale = :en
 
     config.middleware.use ActionDispatch::Cookies
     config.middleware.use ActionDispatch::Flash
     config.middleware.use Rack::MethodOverride
     config.middleware.use ActionDispatch::Session::CookieStore, {:key=>"_app_templete_my2_session"}
 
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
  end
end
