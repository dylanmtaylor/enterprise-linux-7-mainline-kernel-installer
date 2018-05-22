# Enterprise Linux v7 Mainline Kernel Installer
Simple script that installs the ElRepo mainline kernel on RHEL/CentOS 7.

Never pipe anything to bash without reading the code to make sure it's safe.

##### Usage
```bash
curl https://raw.githubusercontent.com/dylanmtaylor/enterprise-linux-7-mainline-kernel-installer/master/mainline-kernel.sh | sudo bash
```

on reboot, `sudo yum remove kernel kernel-debug-devel` to remove the Red Hat kernel package so the `kernel-ml` package is used instead.

After an update, you may need to run the command `grub2-set-default 0` to set the newly installed kernel as the default for boot on a server installation.
