# -*- encoding : utf-8 -*-
# Be specific with version and patch level as this is hardcoded in the tests.
#
# Not testing Maglev as ./configure complains if run as root and fails, also
# compiling Maglev consistantly locks up my machine (old hardware).

ruby_install_ruby 'ruby 1.9.3-p545'
ruby_install_ruby 'ruby 2.0.0-p451'
ruby_install_ruby 'ruby 2.1.2'
ruby_install_ruby 'jruby 1.7.12'
ruby_install_ruby 'rbx 2.2.6'
