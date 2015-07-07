# vi: set ft=ruby:fdm=marker

# Options {{{
#
APP_HOST = "33.33.33.70"
APP_HOSTNAME = "stouts.ru"
# }}}


# Vagrant 2.0.x {{{
#
Vagrant.configure("2") do |config|

    # If your connection is slow download image manualy and run 'vagrant box add ...'
    config.vm.box = "trusty64"
    config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    config.ssh.insert_key = false

    # Set hostname
    config.vm.hostname = APP_HOSTNAME

    # Configure network
    config.vm.network :private_network, ip: APP_HOST

    # Configure provider
    config.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--name", APP_HOSTNAME]
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end

    # Share folder
    config.vm.synced_folder '.', '/vagrant', disabled: true

end
# }}}
