#!/bin/sh

adduser --system $USERNAME
(echo $PASSWORD; echo $PASSWORD) | smbpasswd -a $USERNAME

/usr/sbin/smbd -D

tail -f /dev/null
