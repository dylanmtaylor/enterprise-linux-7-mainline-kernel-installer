# enterprise-linux-7-mainline-kernel-installer
Simple script that installs the ElRepo mainline kernel on RHEL/CentOS 7.

Never pipe anything to bash without reading the code to make sure it's safe.

##### Usage
```bash
curl https://raw.githubusercontent.com/dylanmtaylor/enterprise-linux-7-mainline-kernel-installer/master/mainline-kernel.sh | sudo bash
```

on reboot, sudo yum remove kernel to remove the Red Hat kernel package so the kernel-ml is used instead.
