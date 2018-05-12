#!/bin/sh

cat Brewfile |
  ag 'brew "' |
  awk '{$0=$2} {gsub(/[",]/, "")}1' |
  tr '\n' ' ' |
  xargs brew info --json=v1 |
  jq -r '.[] | "- [`\(.name)`](\(.homepage)): \(.desc)"' |
  pbcopy
