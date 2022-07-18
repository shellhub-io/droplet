#!/bin/bash

# Enable ShellHub service
systemctl enable shellhub

# Change default OpenSSH port
sed -i 's,^#Port 22,Port 2222,g' /etc/ssh/sshd_config

mkdir -p /var/www
cd /var/www

# Download and configure ShellHub Self-Hosted server
git clone -b $application_version https://github.com/shellhub-io/shellhub.git shellhub
cd shellhub
make keygen
