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

# force the cacher-client recipe to run before other recipes. It forces apt to use the proxy
# before other recipes run. Useful if your nodes have limited access to public apt repositories.
# This is overridden if the cacher-ng recipe is in your run list. Default is 'false'
default['apt']['compiletime'] = false

# Consider recommended packages as a dependency for installing. (default: true)
default['apt']['confd']['install_recommends'] = false

# Unattended Upgrades
default['apt']['unattended_upgrades']['enable']                     = true              # enables unattended upgrades, default is false
default['apt']['unattended_upgrades']['update_package_lists']       = true              # automatically update package list (apt-get update) daily, default is true
default['apt']['unattended_upgrades']['allowed_origins'] = {
  'security'  => true,
  'updates'   => false,
  'proposed'  => false,
  'backports' => false
}                                                                                       # array of allowed apt origins from which to pull automatic upgrades, defaults to a guess at the system's main origin and should almost always be overridden
# default['apt']['unattended_upgrades']['package_blacklist']                            # an array of package which should never be automatically upgraded, defaults to none
default['apt']['unattended_upgrades']['auto_fix_interrupted_dpkg']  = false             # attempts to repair dpkg state with dpkg --force-confold --configure -a if it exits uncleanly, defaults to false (contrary to the unattended-upgrades default)
default['apt']['unattended_upgrades']['minimal_steps']              = true              # Split the upgrade into the smallest possible chunks. This makes the upgrade a bit slower but it has the benefit that shutdown while a upgrade is running is possible (with a small delay). Defaults to false.
default['apt']['unattended_upgrades']['mail']                       = 'root@localhost'  # Send email to this address for problems or packages upgrades. Defaults to no email.
default['apt']['unattended_upgrades']['mail_only_on_error']         = true              # If set, email will only be set on upgrade errors. Otherwise, an email will be sent after each upgrade. Defaults to true.
default['apt']['unattended_upgrades']['install_on_shutdown']        = false             # Install upgrades when the machine is shuting down instead of doing it in the background while the machine is running. This will (obviously) make shutdown slower. Defaults to false.
default['apt']['unattended_upgrades']['remove_unused_dependencies'] = true              # Do automatic removal of new unused dependencies after the upgrade. Defaults to false.
default['apt']['unattended_upgrades']['automatic_reboot']           = false             # Automatically reboots without confirmation if a restart is required after the upgrade. Defaults to false.
default['apt']['unattended_upgrades']['dl_limit']                   = nil               # Limits the bandwidth used by apt to download packages. Value given as an integer in kb/sec. Defaults to nil (no limit).
