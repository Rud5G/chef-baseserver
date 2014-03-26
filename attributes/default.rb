#
# Cookbook Name:: baseserver
# Attributes:: default
#
# Copyright (C) 2013 Triple-networks
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# compiletime
default['apt']['compiletime'] = true
default['build_essential']['compiletime'] = true
default['yum']['compiletime'] = true

# newrelic
default['newrelic']['license'] = nil

default['newrelic']['use_vault'] = false
default['newrelic']['data_bag']  = nil
default['newrelic']['data_bag_item'] = nil

default['newrelic']['application_monitoring']['enabled'] = nil
default['newrelic']['application_monitoring']['appname'] = nil

# ntp
default['ntp']['servers'] = %w( 0.nl.pool.ntp.org 1.nl.pool.ntp.org 2.nl.pool.ntp.org 3.nl.pool.ntp.org )

# users. Only create users from databag "users", which have the following group
default['users']['create_users_in_group'] = 'users'

# hostname
default['net']['FQDN'] = node['fqdn']
default['net']['hostname'] = node['node_name']

# Chef::Config[:solo]
# Chef::Config[:knife][:chef_node_name]
# Chef::Config[:knife][:fqdn]
