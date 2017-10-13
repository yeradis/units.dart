#!/bin/bash

usage() {
    cat <<EOM
    Usage:
    $(basename $0) <options>

    where possible options include:
    --tests             run all tests
    --coverage          generate coverage report
    --coverage_open     open existing coverage report
    --coverage_upload   upload existing coverage report to coveralls.io

EOM
    exit 1
}

if [[ $# -eq 0 ]] ; then
    usage;
fi

for var in "$@"
do
    case "${var}"
    in
        --tests) pub run test -r expanded test/*.dart;;
        --coverage) pub run dart_codecov_generator --report-on=lib/ --verbose;;
        --coverage_open) open coverage_report/index.html;;
        --coverage_upload) pub global run coveralls coverage.lcov;;
    esac
done