#!/bin/bash
useradd ansible
echo "ansible/adminpasswd | chpasswd"
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum update -y
yum install -y ansible

