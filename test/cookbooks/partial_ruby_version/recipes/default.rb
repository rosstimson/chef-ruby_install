# -*- encoding : utf-8 -*-

# https://github.com/rosstimson/chef-ruby_install/issues/3
# It is important to test that even when a Ruby is installed using a partial
# version string that it still gets installed into a directory named after the
# full version/patchlevel.

ruby_install_ruby 'ruby 1.9'
