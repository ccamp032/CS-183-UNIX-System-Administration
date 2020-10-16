#!/bin/bash/env sh


# I won't use routing and delivering electronic mail in centos so postfix.service should be disabled

systemctl disable postfix.service

# I won't connect to the remote server in centos so it should be disabled

systemctl disable sshd.service

