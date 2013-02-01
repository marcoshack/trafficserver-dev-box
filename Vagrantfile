Vagrant::Config.run do |config|
  config.vm.box       = 'precise64'
  config.vm.box_url   = 'http://files.vagrantup.com/precise64.box'
  config.vm.host_name = 'ts-dev-box'

  config.vm.forward_port 8080, 8080

  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules'
end
