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

  # python2-pip requires epel
  yum -y install epel-release

  # Install Python.
  yum -y install python2-pip

  # Install Ansible.
  pip install ansible
  yum -y install git

fi
