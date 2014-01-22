#!/usr/bin/env bats

@test "vim binary is found in PATH" {
  run which vim
  [ "$status" -eq 0 ]
}
