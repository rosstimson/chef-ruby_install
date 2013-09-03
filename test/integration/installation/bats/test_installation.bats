#!/usr/bin/env bats

@test "ruby-install is installed and in the path" {
  which ruby-install
}

@test "ruby-install is expected version" {
  run ruby-install --version
  [ "$output" = "ruby-install: 0.3.0" ]
}
