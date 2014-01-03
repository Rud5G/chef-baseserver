name             'baseserver'
maintainer       'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license          'Apache 2.0'
description      'Installs/Configures a base server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.2'

%w{ centos redhat ubuntu }.each do |os|
  supports os
end

%w{ apt fail2ban git hostname newrelic-ng ntp logrotate simple_cuke vim yum }.each do |cb|
  depends cb
end
