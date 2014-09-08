# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise32"

  config.vm.network "public_network"

  #set the memory to 512mb
  config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
    vb.gui = false
  
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  #run build.sh for configuration
  config.vm.provision :shell, :path => "build.sh"
end
