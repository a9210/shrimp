#!/bin/bash
source include.sh

Hash=$(@import shrimp-util Hash.sh)
source ${Hash}

put "key" "value"
put "natsume" "souseki"

get "key"
get "natsume"
