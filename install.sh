if [ ! $(whoami)="root"]; then 
    echo "Need root perms to install, use sudo or run as root"
else 
    #cp $PWD/bin/yay /usr/bin/yay
    #cp $PWD/bin/pkg /usr/bin/pkg
    echo "sudo check works"
fi

exit