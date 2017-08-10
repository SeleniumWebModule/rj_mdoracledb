# -*- mode: ruby -*-
# vi: set ft=ruby :

#SERÁ GERADO PELO SELENIUM_PROC

VAGRANT_FILE_VERSION = 2

Vagrant.configure(VAGRANT_FILE_VERSION) do |config|

  config.vm.box        = 'ebrc/centos-7-64-puppet'

  config.ssh.username  = 'vagrant'
  config.ssh.password  = 'vagrant'
  config.ssh.insert_key = 'true'

  config.vm.provider :virtualbox do |virtualbox|
    virtualbox.customize ["modifyvm", :id, "--cpus", "3"]
    virtualbox.customize ["modifyvm", :id, "--memory", "2596"]
  end

  config.vm.define :selenium_oracledb do |selenium_oracledb|
	  selenium_oracledb.vm.network "private_network", ip: "192.168.70.100"
  end

  config.vm.provision "puppet" do |puppet|
  	puppet.environment_path = "environments"
  	puppet.environment 	= "development"
 	  puppet.module_path      = "puppet/modules"

    puppet.facter = {
      "oraclebasename"    => "u01",
      "oracleversion"     => "11.2.0",
      "pathname"          => "dbhome_1",
      "dbname"            => "VTABOL",
      "systempass"        => "vtax05",
      "sid"               => "ORCL",
      "portdb"            => "1521",
      "userdb"            => "VTABOL",
      "passdb"            => "vtax05"
    }

  end
end
