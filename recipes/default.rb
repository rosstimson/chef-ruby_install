# -*- encoding : utf-8 -*-
#
# Cookbook Name:: ruby_install
# Recipe:: default
#
# Author:: Ross Timson <ross@rosstimson.com>
#
# Copyright 2013, Ross Timson
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Relying on ruby-install to grab build dependencies for Rubies but it will
# fail unless package index files are not up to date.
case node['platform_family']
when 'debian'
  include_recipe 'apt'
when 'rhel'
  include_recipe 'yum'
end

include_recipe 'ark'

ark 'ruby_install' do
  url "https://codeload.github.com/postmodern/ruby-install/tar.gz/v#{node['ruby_install']['version']}" # rubocop:disable LineLength
  extension 'tar.gz'
  checksum node['ruby_install']['checksum']
  prefix_root '/tmp' # Don't need /usr/local/ruby-install
  action :install_with_make
end

# Make sure ruby-install has correct ownership, Debian doesn't seem to use
# group 'root' when it is installed unlike all the others including Ubuntu.
execute 'chown root:root /usr/local/bin/ruby-install'
