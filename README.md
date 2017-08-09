# ansible_docker
Automation deploy docker with ansible

### Sofware

- [Vagrant](http://www.vagrantup.com), tested with v1.7.4
- [VirtualBox](https://www.virtualbox.org), tested with v5.0.0.

### Hardware

- This environment need at least 2GB (2048 KB) RAM for it self, so you need at least 4GB RAM installed at your machine.
- Number of CPUs is 1.
- Video memory is 8MB.
- Storage start from 10 GB (it'll increased by time).

### Preparation

* Make sure you already generate ssh key and add that ssh key to your github account, you can see the tutorial [here](https://help.github.com/articles/generating-ssh-keys/).
* Check your ssh to use agent forwarding, you can see the tutorial [here](https://developer.github.com/guides/using-ssh-agent-forwarding/), and if you already add agent forwarding config but still not working, you can try run `ssh-add -K` at your terminal.

## Installation

- Clone the repository on your local machine.
- Go to `/path/of/your/box` with terminal or console.
- Run `vagrant up` inside that folder and wait until vagrant configuration is completed.
- Add this to your `/etc/hosts` file :

```
    192.168.56.10  pasy.dev api.pasy.dev admin.pasy.dev supervisor.pasy.dev queue.pasy.dev mail.pasy.dev search.pasy.dev img.pasy.dev
```

- If something goes wrong you can try restart the box using `vagrant reload` command.
- When there is an update in configuration or inside playbook, just run `vagrant provision`.

## License

This box is built on top [Ansible](https://www.ansible.com/) so the license will refer to [Ansible Licence](https://en.wikipedia.org/wiki/Ansible_(software)), but the configuration it self is strictly confidential just for internal use on [Pasy](#) project.
