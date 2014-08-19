# Encoding: utf-8
#
# Cookbook Name:: ruby_install
# Library:: matchers
#
# Author:: Fletcher Nichol <fnichol@nichol.ca>
#
# Copyright 2014, Fletcher Nichol
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

if defined?(ChefSpec)
  def install_ruby_install_ruby(version)
    ChefSpec::Matchers::ResourceMatcher.new(:ruby_install_ruby, :install, version)
  end

  def reinstall_ruby_install_ruby(version)
    ChefSpec::Matchers::ResourceMatcher.new(:ruby_install_ruby, :reinstall, version)
  end
end
