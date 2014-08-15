# BaseServer Cookbook

Welcome, do not use this cookbook for any production environment, at this time.

# Status

[![Build Status](https://travis-ci.org/Rud5G/chef-baseserver.png?branch=master)](https://travis-ci.org/Rud5G/chef-baseserver)
[![Dependency Status](https://gemnasium.com/Rud5G/chef-baseserver.png)](https://gemnasium.com/Rud5G/chef-baseserver)
[![Coverage Status](https://coveralls.io/repos/Rud5G/chef-baseserver/badge.png?branch=master)](https://coveralls.io/r/Rud5G/chef-baseserver?branch=master)
[![Version Status](http://img.shields.io/badge/beta-0.7.3-blue.svg)](https://github.com/Rud5G/chef-baseserver)
[![Stories in Ready](https://badge.waffle.io/rud5g/chef-baseserver.png?label=ready&title=Ready)](https://waffle.io/rud5g/chef-baseserver)

# Requirements

Install chef-dk from the [downloads page](http://www.getchef.com/downloads/chef-dk/) or the [Chef-DK github page](https://github.com/opscode/chef-dk)

Install Vagrant '>= 1.5.2' from the [Vagrant 1.5.2 downloads page](http://www.vagrantup.com/download-archive/v1.5.2.html)

Install the Vagrant plugins: Berkshelf, Omnibus, Hostmanager

    $ vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'
    $ vagrant plugin install vagrant-omnibus
    $ vagrant plugin install vagrant-hostmanager

# Usage

## Standalone

Run this cookbook standalone on a vm, use

    $ vagrant up

To re-provision the vm, use

    $ vagrant provision

## Use in an other cookbook

Add this cookbook as a dependency to the metadata.rb in your cookbook.

    depends 'baseserver', '~> 0.7.3'

Add to the Berksfile: 

    cookbook 'baseserver', github: 'Rud5G/chef-baseserver'

Include the recipe: 

    include_recipe 'baseserver::baseserver'

# Attributes

# Recipes

# Author

Author:: Triple-networks (<r.gravestein@triple-networks.com>)

# Todo 

 * add attributes, data_bags, etc.

