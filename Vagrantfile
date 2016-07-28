# -*- mode: ruby -*-
Vagrant.configure(2) do |config|
    config.vm.hostname = "sonarqube"
    config.vm.box = "ubuntu/trusty64"
    config.vm.network :forwarded_port, guest: 9000, host: 9000
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    config.vm.provision :shell, path: 'provision/sonarqube-provision.sh'
end
