bluemix-ansible
--------------


Ansible playbooks to install basic utils for working with bluemix: bx, kubectl, docker, cf, and several git repos. This requires an ansible inventory file.

Inventory:

```shell
cat inventory
[hosts]
192.168.0.5 ansible_ssh_user=ubuntu
```


Usage:

```shell
ansible-playbook -i inventory k8s-client.yml
ansible-playbook -i inventory bx-client.yml
ansible-playbook -i inventory cf-client.yml
ansible-playbook -i inventory git-repos.yml
```

or

```shell
./run_all.sh
```
