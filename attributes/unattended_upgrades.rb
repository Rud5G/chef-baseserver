#
# Cookbook Name:: baseserver
# Attributes:: unattended-upgrades
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

default['unattended-upgrades']['admin_email']                = 'root@localhost' # Set to nil to disable, or override to another value
default['unattended-upgrades']['package_blacklist']          = []
default['unattended-upgrades']['autofix_dpkg']               = true             # Strongly advised not to change
default['unattended-upgrades']['minimal_steps']              = false            # Set to true to split upgrade into steps making it easier to interrupt
default['unattended-upgrades']['install_on_shutdown']        = false
default['unattended-upgrades']['mail_only_on_error']         = true
default['unattended-upgrades']['remove_unused_dependencies'] = true
default['unattended-upgrades']['automatic_reboot']           = false
default['unattended-upgrades']['download_limit']             = nil              # Set to Integer representing kb/sec limit

default['unattended-upgrades']['allowed_origins'] = {
  'security'  => true,
  'updates'   => false,
  'proposed'  => false,
  'backports' => false
}

default['unattended-upgrades']['apt_recipe'] = 'default'
