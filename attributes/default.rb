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

# build-essential
# Execute resources at compile time
default['build-essential']['compile_time'] = true

# ntp
default['ntp']['servers'] = %w[0.nl.pool.ntp.org 1.nl.pool.ntp.org 2.nl.pool.ntp.org 3.nl.pool.ntp.org]

# users. Only create users from databag "users", which have the following group
default['users']['create_users_in_group'] = 'users'
