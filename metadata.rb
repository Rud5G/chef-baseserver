name 'baseserver'
maintainer 'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license 'Apache 2.0'
description 'Installs/Configures a base server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
description 'Installs/Configures baseserver'
long_description 'Installs/Configures baseserver'
version '0.7.10'

# provide
provides 'baseserver::baseserver'

# support
%w( centos redhat ubuntu ).each do |os|
  supports os
end

depends 'apt', '~> 2.6.0'
depends 'build-essential', '~> 2.1.3'
depends 'fail2ban', '~> 2.2.1'
depends 'git', '~> 4.0.2'
depends 'hostsfile', '~> 2.4.5'
depends 'logrotate', '~> 1.7.0'
depends 'ntp', '~> 1.6.2'
depends 'unattended-upgrades', '~> 0.1.2'
depends 'users', '~> 1.7.0'
depends 'vim', '~> 1.1.2'
depends 'yum', '~> 3.5.1'

# additional for chef-solo
depends 'chef-solo-search', '~> 0.5.1'
