name 'baseserver'
maintainer 'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license 'Apache 2.0'
description 'Installs/Configures baseserver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url 'https://github.com/Rud5G/chef-baseserver/issues'
source_url 'https://github.com/Rud5G/chef-baseserver'
version '0.9.4'

# provide
provides 'baseserver::baseserver'

# support
supports 'ubuntu'

depends 'apt', '~> 6.1.3'
depends 'build-essential', '~> 8.0.3'
depends 'fail2ban', '~> 4.0.1'
depends 'git', '~> 6.1.0'
depends 'hostsfile', '~> 3.0.1'
depends 'locales', '~> 0.3.1'
depends 'logrotate', '~> 2.2.0'
depends 'logwatch', '~> 2.1.1'
depends 'ntp', '~> 3.5.1'
depends 'users', '~> 5.1.0'
depends 'vim', '~> 2.0.2'
