# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"  #"debian/buster64"
    config.vm.network :forwarded_port, guest: 3030, host: 3030
    config.vm.synced_folder "test_dashboard/", "/home/vagrant/test_dashboard"
    config.vm.provision "shell", path: "bootstrap.sh", privileged: true
    config.vm.provision "shell", path: "user-bootstrap.sh", privileged: false
end
