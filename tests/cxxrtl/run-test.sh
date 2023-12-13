#!/bin/bash

set -ex

run_subtest () {
    local subtest=$1; shift

    ${CC:-gcc} -std=c++11 -o cxxrtl-test-${subtest} -I../../backends/cxxrtl/runtime test_${subtest}.cc -lstdc++
    ./cxxrtl-test-${subtest}
}

run_subtest value
