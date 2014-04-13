name             'baseserver'
maintainer       'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license          'Apache 2.0'
description      'Installs/Configures a base server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.6.2'

%w( centos redhat ubuntu ).each do |os|
  supports os
end

%w( apt build-essential fail2ban git hostsfile php ntp logrotate users vim yum ).each do |cb|
  depends cb
end

# issue with 1.0.0
depends 'newrelic', '~> 0.5.8'

# additional for chef-solo
%w( chef-solo-search ).each do |cb|
  depends cb
end
