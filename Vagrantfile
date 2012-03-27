Vagrant::Config.run do |config|
  # Basebox name
  config.vm.box = "graylog2"

  # Port forwards
  config.ssh.forward_agent = true
  config.vm.forward_port 80,  8081
  config.vm.forward_port 514, 1514, { :protocol => "udp" }

  # Chef-solo provisioner
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.add_role "graylog2"
  end

  # VM customization
  config.vm.customize ["modifyvm", :id, "--memory", 2048]

end

