# frozen_string_literal: true

require_relative 'vcap_services'

Sidekiq.configure_server do |config|
  config.redis = {
    url: ENV.fetch('REDIS_URL', nil),
    db: ENV.fetch('REDIS_DB_INSTANCE', 0)
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: ENV.fetch('REDIS_URL', nil),
    db: ENV.fetch('REDIS_DB_INSTANCE', 0)
  }
end
