# Be sure to restart your daemon when you modify this file

# Uncomment below to force your daemon into production mode
#ENV['RAEMON_ENV'] ||= 'production'

require File.join(File.dirname(__FILE__), 'boot')

Raemon::Server.run do |config|
  config.name         = 'Sampled'
  config.worker_klass = 'Sampled::Worker'
  config.num_workers  = 1
  config.timeout      = 60
  config.memory_limit = 50 # in MB
  
  config.log_level    = :info
end
