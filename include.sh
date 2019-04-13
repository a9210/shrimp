#!/bin/bash
function @import {
    local PACKAGE_NAME=${1}
    local TARGET_SH=${2}
    RESULT=`cat package.txt | grep "^${PACKAGE_NAME}" | awk '{print $2;}'`
    echo "./packages/${RESULT}/${TARGET_SH}"
    return 0
}