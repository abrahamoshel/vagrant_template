# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # box come from -- vagrant box add precise32 http://files.vagrantup.com/precise32.box
  config.vm.box = "precise32"
  config.vm.forward_port 80, 4500

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "rvm::vagrant"
    chef.add_recipe "rvm::system"
    chef.add_recipe "git"
    chef.add_recipe "nginx"
    chef.add_recipe "postgresql"
    chef.add_recipe "mysql"
    chef.json.merge!({
      :rvm => {
        :rubies => ["ruby-1.9.3", "ruby-1.8.7"],
        :default_ruby => 'ruby-1.8.7@oldschool',
        :gems => {
          'ruby-1.9.3@awesome' => [
            { 'name'    => 'vagrant' },
            { 'name'    => 'rake' },
          ],
          'ruby-1.8.7@oldschool' => [
            { 'name'    => 'veewee' }
          ]
        },
        :rvmrc => {
          'rvm_project_rvmrc' => 1,
          'rvm_gemset_create_on_use_flag' => 1,
          'rvm_pretty_print_flag' => 1
        },
      }
    })
  end
end
