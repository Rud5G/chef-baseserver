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
end
