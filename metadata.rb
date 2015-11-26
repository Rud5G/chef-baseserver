name 'baseserver'
maintainer 'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license 'Apache 2.0'
description 'Installs/Configures baseserver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.8.5'

# provide
provides 'baseserver::baseserver'

# support
%w( centos redhat ubuntu ).each do |os|
  supports os
end

depends 'apt', '~> 2.9.2'
depends 'build-essential', '~> 2.2.4'
depends 'fail2ban', '~> 2.3.0'
depends 'git', '~> 4.3.4'
depends 'hostsfile', '~> 2.4.5'
depends 'logrotate', '~> 1.9.2'
depends 'ntp', '~> 1.8.6'
depends 'users', '~> 1.8.2'
depends 'vim', '~> 2.0.0'
depends 'yum', '~> 3.8.2'
