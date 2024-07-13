#!/bin/sh

adduser --system $USERNAME
(echo $PASSWORD; echo $PASSWORD) | smbpasswd -a $USERNAME

/usr/sbin/smbd -D

chmod 777 /storage

tail -f /dev/null
