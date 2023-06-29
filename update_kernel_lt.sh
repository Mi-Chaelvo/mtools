#!/bin/bash
echo "Install latest LT kernel!"
echo "Import certificate!"
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
echo "Start installing kernel boot!"
yum install https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm -y
echo "Starting to install the kernel!"
yum --enablerepo=elrepo-kernel install kernel-lt kernel-lt-devel kernel-lt-headers kernel-lt-tools kernel-lt-tools-libs kernel-lt-tools-libs-devel -y
echo "Set boot to start!"
grub2-set-default 0
