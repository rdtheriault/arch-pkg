if [ ! $(whoami) = "root" ]; then 
    echo please run as root
    exit
else
    if [ ! $(which yay) = "" ]; then 
        echo "preinstalled yay found, installing to /usr/bin/wrap"
        cp bin/wrap /usr/bin/wrap
        chmod +x /usr/bin/wrap
    else   
        echo "yay not found, installing to /usr/bin/yay"
        echo "installing wrap to /usr/bin/wrap"
        cp bin/yay /usr/bin/yay
        cp bin/wrap /usr/bin/wrap
        chmod +x /usr/bin/wrap
        chmod +x /usr/bin/yay
    fi
fi[]
exit