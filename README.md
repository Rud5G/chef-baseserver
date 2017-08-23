# BaseServer Cookbook
---------------------


Welcome, use this cookbook for production environments at own risk.

[![Build Status](https://travis-ci.org/Rud5G/chef-baseserver.png?branch=master)](https://travis-ci.org/Rud5G/chef-baseserver)
[![Coverage Status](https://coveralls.io/repos/Rud5G/chef-baseserver/badge.png?branch=master)](https://coveralls.io/r/Rud5G/chef-baseserver?branch=master)
[![Version Status](http://img.shields.io/badge/beta-0.9.3-blue.svg)](https://github.com/Rud5G/chef-baseserver)

# Requirements

Install chef-dk from the downloads page on the [Chef-DK github page](https://github.com/opscode/chef-dk)

# Usage

### Standalone (testing)

Set the required users & config in the databags.

    $ kitchen create
    $ kitchen converge
    $ kitchen destroy

## Use in an other cookbook

Add this cookbook as a dependency to the metadata.rb in your cookbook.
check the current version in the metadata.rb

    depends 'baseserver', '~> 0.9.3'

Include the recipe:

    include_recipe 'baseserver::baseserver'

# Attributes

# Recipes

# Author

Author:: Triple-networks (<r.gravestein@triple-networks.com>)

# Todo

 see github issues.

