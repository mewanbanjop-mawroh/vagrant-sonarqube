# -*- mode: ruby -*-
Vagrant.configure(2) do |config|
    config.vm.hostname = "sonarqube"
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "private_network", ip: "192.168.10.11"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    config.vm.provision :shell, path: 'provision/sonarqube-provision.sh'
end
