# -*- mode: ruby -*-
# vi: set ft=ruby :


# check Vagrant version
if Vagrant::VERSION < '1.2.4'
  raise 'only compatible with Vagrant 1.2.4+'
end


# requires Vagrant plugins
Vagrant.require_plugin 'vagrant-berkshelf'
Vagrant.require_plugin 'vagrant-omnibus'




Vagrant.configure('2') do |config|
  config.vm.hostname = 'baseserver'

  config.vm.define 'ubuntu-12.04', primary: true do |c|
    c.vm.box = 'opscode-ubuntu-12.04'
    c.vm.box_url = 'https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box'
  end

  #config.vm.define 'centos-6' do |c|
  #  c.vm.box = 'opscode-centos-6.4'
  #  c.vm.box_url = 'https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box'
  #end

  #config.vm.network :private_network, ip: '33.33.33.10'
  #config.vm.network :private_network, ip: '172.16.1.5'
  config.vm.network :private_network, ip: '192.168.50.4'


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder '../data', '/vagrant_data'

  # Provider-specific configuration
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', 1024]
  end

  if Vagrant::VERSION < '1.3.0'
    config.ssh.max_tries = 40
    config.ssh.timeout   = 120
  else
    config.vm.boot_timeout = 300
  end

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = %w{
      recipe[baseserver::default]
      recipe[simple_cuke]
    }
  end
end
