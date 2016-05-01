name 'baseserver'
maintainer 'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license 'Apache 2.0'
description 'Installs/Configures baseserver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.8.6'

# provide
provides 'baseserver::baseserver'

# support
%w( centos redhat ubuntu ).each do |os|
  supports os
end

depends 'apt', '~> 3.0.0'
depends 'build-essential', '~> 3.2.0'
depends 'fail2ban', '~> 2.3.0'
depends 'git', '~> 4.5.0'
depends 'hostsfile', '~> 2.4.5'
depends 'locales', '~> 0.3.1'
depends 'logrotate', '~> 1.9.2'
depends 'ntp', '~> 1.11.0'
depends 'users', '~> 2.0.3'
depends 'vim', '~> 2.0.1'
depends 'yum', '~> 3.10.0'
