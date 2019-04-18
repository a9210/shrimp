#!/bin/bash

function demo() {
    local dummyInput=""

    echo -n "> $*"
    read dummyInput
    $*
}
