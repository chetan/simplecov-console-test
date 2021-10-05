#!/bin/bash

# Simple script to run all the tests with various flag combinations, etc.

set -eo pipefail

run_test() {
	local name=$1
	echo
	echo
	echo "################################################################################"
	echo "# Test: ${name}"
	echo "################################################################################"
	echo
	STUB=1 bundle exec rake test
	echo
	echo
}

run_test default
STYLE=block run_test "style=block"
BRANCH=1 run_test "branch coverage"
WIDTH=200 run_test "width=200"
NO_COLOR=1 run_test "no colors"
SHOW_COVERED=true run_test "include 100% covered files"
MAX_ROWS=1 run_test "max rows = 1"
SORT=coverage run_test "sort by coverage"
MAX_LINES=1 run_test "max missing lines = 1"
MISSING_LEN=6 run_test "max length for missing lines col = 6"
