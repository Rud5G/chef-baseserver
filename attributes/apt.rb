#
# Cookbook Name:: baseserver
# Attributes:: apt
#
# Copyright (C) 2015 Triple-networks
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

# General

# force the default recipe to run apt-get update at compile time.
default['apt']['compile_time_update'] = true

# Cacheing

# This is overridden if the cacher-ng recipe is in your run list.
# Default is 'false'
default['apt']['compiletime'] = false

# Consider recommended packages as a dependency for installing. (default: true)
default['apt']['confd']['install_recommends'] = false

# Unattended Upgrades
# enables unattended upgrades, default is false
default['apt']['unattended_upgrades']['enable'] = true
# automatically update package list (apt-get update) daily, default is true
default['apt']['unattended_upgrades']['update_package_lists'] = true
default['apt']['unattended_upgrades']['allowed_origins'] = {
  'security' => true,
  'updates' => false,
  'proposed' => false,
  'backports' => false
}

default['apt']['unattended_upgrades']['auto_fix_interrupted_dpkg'] = false
default['apt']['unattended_upgrades']['minimal_steps'] = true
default['apt']['unattended_upgrades']['mail'] = 'root@localhost'
default['apt']['unattended_upgrades']['mail_only_on_error'] = true
default['apt']['unattended_upgrades']['install_on_shutdown'] = false
default['apt']['unattended_upgrades']['remove_unused_dependencies'] = true
default['apt']['unattended_upgrades']['automatic_reboot'] = false
default['apt']['unattended_upgrades']['dl_limit'] = nil
