name 'baseserver'
maintainer 'Triple-networks'
maintainer_email 'r.gravestein@triple-networks.com'
license 'Apache 2.0'
description 'Installs/Configures baseserver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#issues_url 'https://github.com/Rud5G/chef-baseserver/issues' if respond_to?(:issues_url)
#source_url 'https://github.com/Rud5G/chef-baseserver' if respond_to?(:source_url)
version '0.9.2'

# provide
provides 'baseserver::baseserver'

# support
supports ubuntu

depends 'apt', '~> 4.0.2'
depends 'build-essential', '~> 6.0.6'
depends 'fail2ban', '~> 2.3.1'
depends 'git', '~> 5.0.1'
depends 'hostsfile', '~> 2.4.5'
depends 'locales', '~> 0.3.1'
depends 'logrotate', '~> 2.1.0'
depends 'logwatch', '~> 2.0.0'
depends 'ntp', '~> 3.1.0'
depends 'users', '~> 4.0.1'
depends 'vim', '~> 2.0.2'
