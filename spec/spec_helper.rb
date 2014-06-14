require 'chefspec'
require 'chefspec/berkshelf'
# require 'chefspec/deprecations'

at_exit { ChefSpec::Coverage.report! }
