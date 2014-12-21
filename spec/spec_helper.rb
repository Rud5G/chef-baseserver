require 'chefspec'
ChefSpec::Coverage.start!

require 'chefspec/berkshelf'
require 'chef/application'


::LOG_LEVEL = :debug
::CHEFSPEC_OPTS = {
    log_level:  ::LOG_LEVEL
}

def stub_resources
end


at_exit { ChefSpec::Coverage.report! }
