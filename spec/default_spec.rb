require_relative 'spec_helper'

describe 'baseserver::baseserver' do
  before do
    stub_resources
    stub_command('which mailx').and_return('/usr/bin/mailx')

    stub_data_bag('users').and_return(['username'])
    stub_data_bag_item('users', 'username').and_return('id' => 'newuser', 'password' => 'secret', 'uid' => 5241, 'groups' => ['users'])

    stub_data_bag('config').and_return(['locales'])
    stub_data_bag_item('config', 'locales').and_return('id' => 'locales', 'locales' => ['en_US.utf8', 'nl_NL.utf8'])
  end

  let(:chef_run) { ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe) }

  it 'should include default recipe' do
    expect(chef_run).to include_recipe('baseserver::default')
  end

  it 'should include packages recipe' do
    expect(chef_run).to include_recipe('baseserver::packages')
  end

  it 'should include config recipe' do
    expect(chef_run).to include_recipe('baseserver::config')
  end

  it 'should include users recipe' do
    expect(chef_run).to include_recipe('baseserver::users')
  end

  it 'should install mailutils' do
    expect(chef_run).to install_package('mailutils')
  end

  it 'creates a group with the default action' do
    expect(chef_run).to create_group('users')
  end

  context 'Resource "users_manage"' do
    it 'creates user' do
      expect(chef_run).to create_users_manage('users')
      # expect(chef_run).to create_user('newuser')
    end
  end
end

# # expect(chef_run).to install_package('apache2').at_compile_time
#
# it 'should install apt' do
#   expect(chef_run).to install_package('apt')
# end
#
# it 'should include the apt recipe by default' do
#   expect(chef_run).to install_apt_package('apt')
# end
#
# it 'should include the git recipe by default' do
#   expect(chef_run).to install_apt_package('git')
# end
#
# it 'should include the ntp recipe by default' do
#   expect(chef_run).to install_apt_package('ntp')
# end
#
# it 'should include the logrotate recipe by default' do
#   expect(chef_run).to install_apt_package('logrotate')
# end
#
# it 'should include the fail2ban recipe by default' do
#   expect(chef_run).to install_apt_package('fail2ban')
# end
#
# it 'should include the vim recipe by default' do
#   expect(chef_run).to install_apt_package('vim')
# end
#
# it 'should include the sysadmins recipe by default' do
#   expect(chef_run).to include_recipe('users::sysadmins')
# end
