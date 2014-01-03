# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Box name
  config.vm.box = "saucy32"

  # Box url
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-i386-vagrant-disk1.box"

  # Guest machine's hostname
  config.vm.hostname = "saucy32"

  # Port forwarding
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Private network ip setting
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Join a public network
  # config.vm.network :public_network

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Synced folder
  # 1st argument : path on the host to the actual folder
  # 2nd argument : path on the guest to mount the folder
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration
  #
  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # Shell Provisioning
  config.vm.provision "shell", path: "provisioner.sh"

end

