require 'serverspec'
require 'chefspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'baseserver::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge 'baseserver::default' }
  it 'installs the fail2ban package' do
    expect(chef_run).to install_package('fail2ban')
  end
end
