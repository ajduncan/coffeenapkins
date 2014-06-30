# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    vb.customize ["modifyvm", :id, "--memory", 1024]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.omnibus.chef_version = :latest
  config.vm.provision :chef_solo do |chef|
    chef.roles_path = File.join(File.dirname(__FILE__), 'roles')
    chef.cookbooks_path = File.join(File.dirname(__FILE__), 'cookbooks')
    chef.data_bags_path = File.join(File.dirname(__FILE__), 'data_bags')
    chef.add_role "webserver"
  end
end
