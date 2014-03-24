ruby-install Chef Cookbook
==========================

Installs [ruby-install][ruby-install], a simple way to build Rubies and
the natural companion to [chruby][chruby].

[ruby-install][ruby-install] itself is responsible for getting and
dependencies necessary for building a particular Ruby.

Requirements
============

Cookbooks
---------

The following cookbook is a direct dependency because it is used for
common "default" functionality.

* ark

On RHEL family distros, the "yum" cookbook is required for obtaining
latest dependencies for building Rubies.

On Debian family distros, the "apt" cookbooks is required for obtaining
latest dependencies for building Rubies.

Platform
--------

The following platforms are supported and tested under test kitchen.

* Ubuntu 12.04
* Debian 7.4
* CentOS 6.5
* Amazon Linux (2013.09.2)

Other Debian and RHEL family distributions are assumed to work.  Other
distributions that [ruby-install][ruby-install] supports should also
work, please [report][issues] any additional platforms so they can be
added.

Usage
=====

Simply include `recipe[ruby_install]` in your run_list to have
ruby-install installed.  You will also have access to the
`ruby_install_ruby` resource.

Recipes
=======

default
-------

Installs the ruby-install codebase and initializes Chef to use the
Lightweight Resources and Providers ([LWRPs][lwrp]).

Attributes
==========

version
-------

The version of ruby-install that will be installed.

The default is the current latest version 0.4.1

checksum
--------

sha256 checksum of the version to be installed, used for security.

The default is a checksum that matches up with the latest ruby-install.

default_ruby_base_path
----------------------

The default base path for installed Rubies.  For example the following
resource:

    ruby_install_ruby 'ruby 2.0.0-p247'

will be installed into 
`"#{node['ruby_install']['default_ruby_base_path']}/ruby-2.0.0-p247"`

The default is `"/opt/rubies"`.

If you are using ruby-install alongside [chruby][chruby] it expects, by
default, to find Rubies in `/opt/rubies` or `~/.rubies`.

Development
===========

* Source hosted at [GitHub][repo]
* Report issues/Questions/Feature requests on [GitHub Issues][issues]

### Contributing

Pull requests are very welcome! Ideally create a topic branch for every
separate change you make.

This cookbook uses [ChefSpec][chefspec] for unit tests. I also use [Food
Critic][foodcritic] and [RuboCop][rubocop] to check for style issues.
When contributing it would be very helpful if you could run these via
`bundle exec spec` and `bundle exec style`.

Lastly, there are [Serverspec][serverspec] integration tests for use
with [Test Kitchen][testkitchen]. At the very least the installation
integration tests should be run, you can ignore the EC2 one if you don't
have an AWS account (which you will get billed for). The allrubies tests
often fail due to a particular Ruby failing to build on an OS, this is
not necessarily an issue with this cookbook though so can safely be
ignored. To see all of the available integration test suites just check
`bundle exec rake T` or `bundle exec kitchen list`

License and Author
==================

Author:: [Ross Timson][rosstimson] (<ross@rosstimson.com>)

Heavily influenced by, and some code from the [Ruby-Build
cookbook][chef-ruby_build], Author:: [Fletcher Nichol][fnichol] (<fnichol@nichol.ca>)

Copyright 2013-2014, Ross Timson

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


[rosstimson]:         https://github.com/rosstimson
[fnichol]:            https://github.com/fnichol
[repo]:               https://github.com/rosstimson/chef-ruby_install
[issues]:             https://github.com/rosstimson/chef-ruby_install/issues
[chef-ruby_build]:    https://github.com/fnichol/chef-ruby_build
[ruby-install]:       https://github.com/postmodern/ruby-install
[chruby]:             https://github.com/postmodern/chruby
[lwrp]:               http://wiki.opscode.com/display/chef/Lightweight+Resources+and+Providers+%28LWRP%29
[chefsepc]:           https://github.com/sethvargo/chefspec
[foodcritic]:         https://github.com/acrmp/foodcritic
[rubocop]:            https://github.com/bbatsov/rubocop
[serverspec]:         https://github.com/serverspec/serverspec
[testkitchen]:        https://github.com/test-kitchen/test-kitchen
