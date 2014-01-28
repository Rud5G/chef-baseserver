require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS



RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
    c.user = 'root'
  end
end

describe service('fail2ban') do

  it { should be_enabled }
  it { should be_running }

#  it 'has a running service of fail2ban' do
#    expect(service('fail2ban')).to be_running
#  end


  #describe 'Test standard installation' do
  #  it { should contain_package('fail2ban').with_ensure('present') }
  #  it { should contain_service('fail2ban').with_ensure('running') }
  #  it { should contain_service('fail2ban').with_enable('true') }
  #  it { should_not contain_file('fail2ban.local') }
  #  it { should_not contain_file('jail.local') }
  #end



  #it 'is listening on port 9418' do
  #  expect(port(9418)).to be_listening
  #end

  #it 'has a running service of git-daemon' do
  #  expect(service('git-daemon')).to be_running
  #end

end
