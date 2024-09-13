#!/usr/bin/env bash

set -ex -o pipefail

dart pub global activate coverage

rm -rf coverage

dart test \
  --coverage coverage \
  test
dart pub global run coverage:format_coverage \
  --in coverage/test/ \
  --out coverage/lcov.info \
  --report-on lib \
  --base-directory . \
  --lcov \
  --check-ignore

lcov --list coverage/lcov.info \
  | grep -v ".*|.*100%.*|.*|"
