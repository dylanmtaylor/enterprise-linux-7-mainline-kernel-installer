#!/bin/bash
# This is based off this gist https://gist.githubusercontent.com/pgporada/bee21b339b6ca750f1de/raw/3cbfdd2d918a31c62fd6748096e7616f0151b2d3/centos7_kernel_update.md
# I use this repository to quickly run through the steps in an automated fashion on a new installation of EL7.

##### Pre-requisites
yum install -y yum-utils

##### Install the ELRepo and GPG key
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum install -y http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm

##### Enable kernel updates from elrepo
yum-config-manager --enable elrepo-kernel

##### Remove old kernel stuff
yum remove -y kernel-{devel,tools,tools-libs}

##### Install the ELRepo built kernel and grub2-tools
yum install -y kernel-ml kernel-ml-{devel,tools,tools-libs} grub2-tools

##### We ensure these exist on the off chance they were removed during the kernel stuff above
yum install -y dkms gcc redhat-lsb-languages

##### Build a new grub config with the ELRepo kernel entry
grub2-mkconfig -o /boot/grub2/grub.cfg
grep vmlinuz /boot/grub2/grub.cfg

##### Ensure we boot the latest kernel
grub2-set-default 0
