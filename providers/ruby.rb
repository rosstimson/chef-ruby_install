# -*- encoding : utf-8 -*-
#
# Cookbook Name:: ruby_install
# Provider:: ruby
#
# Original Author (ruby-build cookbook):: Fletcher Nichol <fnichol@nichol.ca>
# Author (minor modifications):: Ross Timson <ross@rosstimson.com>
#
# Copyright 2013, Fletcher Nichol, Ross Timson
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

def load_current_resource
  @rubie        = new_resource.definition
  @prefix_path  = new_resource.prefix_path ||
    node['ruby_install']['default_ruby_base_path']
end

action :install do
  perform_install
  new_resource.updated_by_last_action(true)
end

action :reinstall do
  perform_install
  new_resource.updated_by_last_action(true)
end

private

def perform_install
  if ruby_installed?
    Chef::Log.debug("ruby_install_ruby[#{@rubie}] is already installed, so skipping")
  else
    install_start = Time.now
    Chef::Log.info("Building ruby_install_ruby[#{@rubie}], this could take a while...")

    rubie       = @rubie        # bypass block scoping issue
    prefix_path = @prefix_path  # bypass block scoping issue

    execute_ruby_install(rubie, prefix_path)

    Chef::Log.info("ruby_install_ruby[#{@rubie}] build time was " \
      "#{(Time.now - install_start) / 60.0} minutes")
    new_resource.updated_by_last_action(true)
  end
end

def execute_ruby_install(rubie, prefix_path)
  execute "ruby-install[#{rubie}]" do
    command   %( /usr/local/bin/ruby-install --rubies-dir "#{prefix_path}" "#{rubie}" )
    user        new_resource.user         if new_resource.user
    group       new_resource.group        if new_resource.group
    environment new_resource.environment  if new_resource.environment
    action    :nothing
  end.run_action(:run)
end

def ruby_installed?
  if Array(new_resource.action).include?(:reinstall)
    false
  else
    install_dirname = @rubie.sub(' ', '-')
    ::File.exists?("#{@prefix_path}/#{install_dirname}/bin/ruby")
  end
end
