bluemix-ansible
--------------


Ansible playbooks to install basic utils for working with bluemix: bx, kubectl, docker, cf, and several git repos

Usage:

```shell
ansible-playbook -i inventory k8s-client.yml
ansible-playbook -i inventory bx-client.yml
ansible-playbook -i inventory git-repos.yml
```
