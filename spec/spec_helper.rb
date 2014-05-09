require 'chefspec'
require 'chefspec/server'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  # Default platform used
  config.platform = 'ubuntu'

  # Default platform version
  config.version = '12.04'

  # Omit warnings from output
  config.log_level = :fatal
end

at_exit { ChefSpec::Coverage.report! }
