#!/bin/bash -eux

source /etc/os-release

if [[ $VERSION_ID > 7 ]]; then

  # Install Python.
  yum -y install python3-pip
  alternatives --set python /usr/bin/python3

  # Install Ansible.
  pip3 install ansible
  yum -y install git

else

  # Install Ansible.
  yum -y install ansible git

fi
