#!/usr/bin/env bats

# Make sure all the ruby binaries are compiled and in the correct directory.

@test "Ruby 1.9.3-p484 is installed" {
  run /opt/rubies/ruby-1.9.3-p484/bin/ruby -v
  [ "$status" -eq 0 ]
  echo "$output" | grep -Eq "ruby 1\.9\.3p484 .*$"
}

@test "Ruby 2.0.0-p353 is installed" {
  run /opt/rubies/ruby-2.0.0-p353/bin/ruby -v
  [ "$status" -eq 0 ]
  echo "$output" | grep -Eq "ruby 2\.0\.0p353 .*$"
}

@test "JRuby 1.7.9 is installed" {
  run /opt/rubies/jruby-1.7.9/bin/ruby -v
  [ "$status" -eq 0 ]
  echo "$output" | grep -Eq "jruby 1\.7\.9 .*$"
}

@test "Rubinius 2.2.2 is installed" {
   run /opt/rubies/rubinius-2.2.2/bin/ruby -v
   [ "$status" -eq 0 ]
   echo "$output" | grep -Eq "rubinius 2\.2\.2 .*$"
}
