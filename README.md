# CentOS packer templates

### Vagrant Virtualbox build example

	packer build -only=virtualbox-iso --var 'build_version=1.0.0' --var 'whiteout=true' \
		-var-file=centos-7-vagrant.json centos-vagrant.json

Vagrant boxes will be automaticly uploaded to [Vagrant Cloud](https://app.vagrantup.com/). This requires the `VAGRANT_CLOUD_TOKEN` environment variable to be set with a valid [authentication token](https://app.vagrantup.com/settings/security), otherwise the upload will fail.

### VMware vSphere build example

	packer build --var 'whiteout=true' -var-file=centos-7.json centos-vsphere.json

#### Required environment variables

	PACKER_VMWARE_HOST='hostname_or_IP'
	PACKER_VMWARE_USERNAME='username'
	PACKER_VMWARE_PASSWORD='password'
	PACKER_VMWARE_DATASTORE='datastore_name'
	PACKER_VMWARE_NETWORK='network_name'
	PACKER_VMWARE_MAC='00:cc:aa:bb:ee:ee'
	PACKER_VMWARE_VM_VERSION='13'