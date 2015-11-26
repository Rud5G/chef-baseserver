# BaseServer Cookbook
---------------------


Welcome, use this cookbook for production environments at own risk.

[![Build Status](https://travis-ci.org/Rud5G/chef-baseserver.png?branch=master)](https://travis-ci.org/Rud5G/chef-baseserver)
[![Dependency Status](https://gemnasium.com/Rud5G/chef-baseserver.png)](https://gemnasium.com/Rud5G/chef-baseserver)
[![Coverage Status](https://coveralls.io/repos/Rud5G/chef-baseserver/badge.png?branch=master)](https://coveralls.io/r/Rud5G/chef-baseserver?branch=master)
[![Version Status](http://img.shields.io/badge/beta-0.9.0-blue.svg)](https://github.com/Rud5G/chef-baseserver)

# Requirements

Install chef-dk from the downloads page on the [Chef-DK github page](https://github.com/opscode/chef-dk)

Install latest Vagrant from the [Vagrant downloads page](https://www.vagrantup.com/downloads.html)

Install the Vagrant plugins: Berkshelf, Omnibus, Hostmanager

    $ vagrant plugin install vagrant-berkshelf
    $ vagrant plugin install vagrant-omnibus
    $ vagrant plugin install vagrant-hostmanager

# Usage

### Standalone (testing)

Set the required users & config in the databags.

    $ vagrant up
    $ vagrant provision
    $ vagrant destroy

    $ vagrant destroy && vagrant up

## Use in an other cookbook

Add this cookbook as a dependency to the metadata.rb in your cookbook.
check the current version in the metadata.rb

    depends 'baseserver', '~> 0.9.0'

Add to the Berksfile:

    cookbook 'baseserver', github: 'Rud5G/chef-baseserver'

Include the recipe:

    include_recipe 'baseserver::baseserver'

# Attributes

# Recipes

# Author

Author:: Triple-networks (<r.gravestein@triple-networks.com>)

# Todo

 * see github issues.
