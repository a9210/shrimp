#!/bin/bash
source demo-include.sh

which shrimp > /dev/null || {
    echo "shrimp was not found in PATH."
    exit 1
}

demo shrimp create myApp
demo cd myApp
demo ls
demo shrimp install shrimp-util https://github.com/a9210/shrimp-util

echo "*** edit myApp.sh ***"
demo cp ../myApp.sh .
demo cat ./myApp.sh

demo ./myApp.sh

demo ls
demo cd ..
demo rm -rf ./myApp