require_relative 'spec_helper'

describe 'baseserver::baseserver' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new
    runner.converge('baseserver::baseserver')
  end

  before do
    stub_data_bag('users').and_return([])
  end

  it 'should include the apt recipe by default' do
    expect(chef_run).to include_recipe 'apt'
  end

  it 'should include the yum recipe by default' do
    chef_run.should include_recipe 'yum'
  end

  it 'should include the git recipe by default' do
    chef_run.should include_recipe 'git'
  end

  it 'should include the ntp recipe by default' do
    chef_run.should include_recipe 'ntp'
  end

  it 'should include the logrotate recipe by default' do
    chef_run.should include_recipe 'logrotate'
  end

  it 'should include the fail2ban recipe by default' do
    chef_run.should include_recipe 'fail2ban'
  end

  it 'should include the vim recipe by default' do
    chef_run.should include_recipe 'vim'
  end

  it 'should include the sysadmins recipe by default' do
    chef_run.should include_recipe 'users::sysadmins'
  end

end
