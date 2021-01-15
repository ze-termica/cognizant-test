Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 8
  end

  config.vm.box = "debian/stretch64"
  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provision "shell", inline: <<-SHELL
    cd /vagrant
    
    sudo apt-get update && sudo apt-get install curl git -y

    # install docker
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh

    # install docker-composer
    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version

    # filebeat configuration
    # sudo chown root filebeat.yml

    docker-compose up
  SHELL

end