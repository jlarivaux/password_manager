require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PasswordManager
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.require_master_key = true

    config.active_record.encryption.deterministic_key = '88aef007f30adf544b7dfe5dea5e67457a34f9f9a75bcda8fdc2b3ad0f65b4ad852469d0d6b6bf2cc658c9df6db568ccdf915acd6e24741  00421f400581b013c'
    config.active_record.encryption.key = '88aef007f30adf544b7dfe5dea5e67457a34f9f9a75bcda8fdc2b3ad0f65b4ad852469d0d6b6bf2cc658c9df6db568ccdf915acd6e2474100421f400581b013c'
  end
end
