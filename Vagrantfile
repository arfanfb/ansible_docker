VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 config.vm.box = "ubuntu/trusty64"
 config.vm.network "private_network", ip: "192.168.56.11"
 config.vm.synced_folder ".", "/vagrant"

 config.ssh.forward_agent = true

 config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

 config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
    s.inline = <<-SHELL
      echo #{ssh_pub_key} >> /home/vagrant/.ssh/id_rsa.pub
      echo #{ssh_pub_key} >> /root/.ssh/id_rsa.pub
    SHELL
  end

 config.vm.provision "ansible" do |ansible|
      ansible.ask_vault_pass = true
      ansible.playbook = "lib/ansible/playbook.yml"
      ansible.sudo = true
      ansible.extra_vars = { ansible_ssh_user: 'vagrant' }
      ansible.raw_arguments  = "--private-key=~/.vagrant.d/insecure_private_key"
      ansible.host_key_checking = false
  end
end
