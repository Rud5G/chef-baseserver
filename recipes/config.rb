#
# Cookbook Name:: baseserver
# Recipe:: config
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

# start with standard locales

locales = node['locales']

begin
  # add data from possible data_bag_item
  localesdata = data_bag_item('config', 'locales')
  locales.concat(localesdata['locales']) if localesdata['locales']
  
  # generate the locales
  bash 'generate the locales' do
    user 'root'
    code <<-EOH
      locale-gen #{locales.join(' ')} > /tmp/locale.log 2>&1
      dpkg-reconfigure locales >> /tmp/locale.log 2>&1
    EOH
  end
  
rescue Net::HTTPServerException => e
  Chef::Application.info("could not load data bag item: config/locales ; #{e}")
end

    
