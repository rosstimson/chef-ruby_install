#!/usr/bin/env bats

@test "ruby-install is installed at /usr/local/bin/ruby-install" {
  command -v /usr/local/bin/ruby-install
}

@test "ruby-install is expected version" {
  run /usr/local/bin/ruby-install --version
  [ "$output" = "ruby-install: 0.3.4" ]
}
