#!/bin/sh

brew bundle dump --force

cat Brewfile |
  ag 'brew "' |
  awk '{$0=$2} {gsub(/[",]/, "")}1' |
  tr '\n' ' ' |
  xargs brew info --json=v1 |
  jq -r 'sort_by(.name) | .[] | "- [`\(.name)`](\(.homepage)): \(.desc)"' |
  pbcopy
