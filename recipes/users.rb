#
# Cookbook Name:: baseserver
# Recipe:: users
#
# Copyright (C) 2013 Triple-networks
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# check for users with the specified group (default:users)
# users_manage node['users']['create_users_in_group'] do
# action :remove
# end
users_manage node['users']['create_users_in_group'] do
  action :create
end

include_recipe 'users::sysadmins'

# additional create the "groups": (which is not "group") and add the users
begin
  data_bag('users').each do |user|
    userdata = data_bag_item('users', user)

    if userdata['groups'].include?(node['users']['create_users_in_group'])

      # create all groups and append the user
      userdata['groups'].each do |groupname|
        group groupname do
          action :create
          append true
          members [userdata['id']]
        end
      end
      Chef::Log.info('user: ' + userdata['id'] + ' exists and is added to groups')

    else
      Chef::Log.warn('Ignored user (invalid groups): ' + userdata['id'])
    end
  end
rescue Net::HTTPServerException => e
  Chef::Application.warn("could not load data bag; #{e}")
end
