# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "trusty-amd64"


  config.vm.provider :lxc do |lxc|
    lxc.customize 'network.type', 'veth'
    lxc.customize 'network.ipv4', '172.16.33.4/32'
    lxc.customize 'network.type', 'veth'
    lxc.customize 'network.ipv4', '192.168.22.100/24'
    lxc.customize 'network.type', 'veth'
    lxc.customize 'network.ipv4', '192.168.11.4'
  end

  config.vm.provision "file" do |file|
    file.source = "hieradata/common.yaml"
    file.destination = "/tmp/hieradata/common.yaml"
  end

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    puppet.module_path = "modules"
    puppet.hiera_config_path = "hiera.yaml"
    puppet.working_directory = "/tmp/vagrant-puppet-2"
  end


end
