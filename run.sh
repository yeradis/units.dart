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

run_setupIfNeeded(){
    if [ ! -d "packages" ]; then
        echo "Missing config... setting up now!"
        echo -e "\n\n"
        pub get --packages-dir
        pub global activate coverage
        pub global activate coveralls
        echo -e "\n\n"
    fi
}

run_setupIfNeeded

run_tests(){
    dartanalyzer .
    pub run test -r expanded test/*.dart
}

run_coverage_generator(){
    run_setupIfNeeded
    pub run dart_codecov_generator --report-on=lib/ --verbose
}

run_coverage_open(){
    run_setupIfNeeded

    if [ ! -f "coverage_report/index.html" ]; then
        echo "Coverage report is missing... generating now now!"
        echo -e "\n\n"
        pub get --packages-dir
        pub global activate coverage
        pub global activate coveralls
        echo -e "\n\n"
    fi

    open coverage_report/index.html
}

run_coverage_upload(){
    pub global run coveralls coverage.lcov
}

for var in "$@"
do
    case "${var}"
    in
        --tests) run_tests;;
        --coverage) run_coverage_generator;;
        --coverage_open) run_coverage_open;;
        --coverage_upload) run_coverage_upload;;
    esac
done