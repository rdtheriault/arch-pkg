#!/bin/bash

if [[ "${EUID}" != '0' ]]; then 
    echo "Please install arch-pkg as root."
    exit 1
else
    if which yay; then 
        echo "preinstalled yay found, installing to /usr/local/bin/wrap"
        cp -a bin/wrap /usr/local/bin/wrap
        chmod +x /usr/local/bin/wrap
    else   
        echo "yay not found, installing to /usr/local/bin/yay"
        echo "installing wrap to /usr/local/bin/wrap"
        cp -a bin/yay /usr/local/bin/yay
        cp -a bin/wrap /usr/local/bin/wrap
        chmod +x /usr/local/bin/wrap
        chmod +x /usr/local/bin/yay
    fi
fi

exit 0
