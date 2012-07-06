Vagrant::Config.run do |config|
  # Basebox name
  config.vm.name = "graylog2"
  config.vm.box = "graylog2"
  config.vm.box_url = "https://github.com/downloads/mariussturm/vagrant_graylog2/graylog2.box"

  # Port forwards
  config.ssh.forward_agent = false
  config.vm.forward_port 80,  8080
  config.vm.forward_port 514, 1514, { :protocol => "udp" }
  config.vm.forward_port 12201, 12201, { :protocol => "udp" }

  # Chef-solo provisioner
  config.vm.provision :chef_solo do |chef|
    chef.provisioning_path = "/srv/vagrant-chef"
    chef.cookbooks_path = ["cookbooks", "site_cookbooks"]
    chef.roles_path = "roles"
    chef.add_role "graylog2"
  end

  # VM customization
  config.vm.customize ["modifyvm", :id, "--memory", 2048]
  config.vm.customize ["modifyvm", :id, "--cpuexecutioncap", 66]
end

