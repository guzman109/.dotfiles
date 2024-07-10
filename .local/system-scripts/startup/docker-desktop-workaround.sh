#!/bin/bash

PASSWD=$(kdialog --password "Password Required")
echo $PASSWD | sudo -S sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
