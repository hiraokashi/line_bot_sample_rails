require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LineBotSampleRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # ES6を使う設定
    config.browserify_rails.commandline_options = ["-t babelify"]
    config.browserify_rails.use_browserifyinc = true
  end
end
