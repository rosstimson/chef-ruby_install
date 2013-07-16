#!/usr/bin/env bats

# Make sure all the ruby binaries are compiled and in the correct directory.

@test "Ruby 1.9.3-p448 is installed" {
  run /opt/rubies/ruby-1.9.3-p448/bin/ruby -v
  [ "$status" -eq 0 ]
  echo "$output" | grep -Eq "ruby 1\.9\.3p448 .*$"
}

@test "Ruby 2.0.0-p247 is installed" {
  run /opt/rubies/ruby-2.0.0-p247/bin/ruby -v
  [ "$status" -eq 0 ]
  echo "$output" | grep -Eq "ruby 2\.0\.0p247 .*$"
}

@test "JRuby 1.7.4 is installed" {
  run /opt/rubies/jruby-1.7.4/bin/ruby -v
  [ "$status" -eq 0 ]
  echo "$output" | grep -Eq "jruby 1\.7\.4 .*$"
}

#@test "Rubinius 2.0.0-rc1 is installed" {
  #run /opt/rubies/rubinius-2.0.0-rc1/bin/ruby -v
  #[ "$status" -eq 0 ]
  #echo "$output" | grep -Eq "rubinius 2\.0\.0rc1 .*$"
#}
