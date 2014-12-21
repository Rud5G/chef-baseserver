require 'chefspec'
ChefSpec::Coverage.start!

require 'chefspec/berkshelf'
require 'chef/application'

def stub_resources
end

# user Matchers for chefspec
if defined?(ChefSpec)
  def create_users_manage(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:users_manage, :create, resource_name)
  end

  def remove_users_manage(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:users_manage, :remove, resource_name)
  end
end

at_exit { ChefSpec::Coverage.report! }
