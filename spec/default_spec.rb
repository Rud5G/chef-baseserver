require_relative 'spec_helper'

describe 'baseserver::baseserver' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new
    runner.converge('baseserver::baseserver')
  end

  before do
    stub_data_bag('users').and_return(['username'])
    stub_data_bag_item('users', 'username').and_return({"id" => "username", "groups" => ["users"]})

    stub_data_bag('config').and_return(['locales'])
    stub_data_bag_item('config', 'locales').and_return({"id" => "locales", "locales" => ["en_US.utf8","nl_NL.utf8"]})
  end

  it 'should include the apt recipe by default' do
    expect(chef_run).to include_recipe 'apt'
  end

  it 'should include the yum recipe by default' do
    expect(chef_run).to include_recipe 'yum'
  end

  it 'should include the git recipe by default' do
    expect(chef_run).to include_recipe 'git'
  end

  it 'should include the ntp recipe by default' do
    expect(chef_run).to include_recipe 'ntp'
  end

  it 'should include the logrotate recipe by default' do
    expect(chef_run).to include_recipe 'logrotate'
  end

  it 'should include the fail2ban recipe by default' do
    expect(chef_run).to include_recipe 'fail2ban'
  end

  it 'should include the vim recipe by default' do
    expect(chef_run).to include_recipe 'vim'
  end

  it 'should include the sysadmins recipe by default' do
    expect(chef_run).to include_recipe 'users::sysadmins'
  end

end
