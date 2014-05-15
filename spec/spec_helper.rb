require 'coveralls'
Coveralls.wear!

require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/deprecations'


RSpec.configure do |config|
  config.platform = 'ubuntu'
  config.version = '12.04'

#  config.log_level = :debug
end
