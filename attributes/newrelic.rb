#
# Cookbook Name:: baseserver
# Attributes:: newrelic
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

include_attribute 'php'


# Debug Recipe:
# require 'pp'
# pp node.debug_value(:php, :ext_conf_dir)

# newrelic
default['newrelic']['license'] = nil

# newrelic - vault
default['newrelic']['use_vault'] = false
default['newrelic']['data_bag']  = nil
default['newrelic']['data_bag_item'] = nil

# newrelic application
default['newrelic']['application_monitoring']['enabled'] = nil
default['newrelic']['application_monitoring']['appname'] = "#{node['app_name']}-#{node.chef_environment}"

