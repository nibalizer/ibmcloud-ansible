ibmcloud-ansible
--------------

Ansible playbooks and utilities for working with the [IBM Cloud](https://cloud.ibm.com). Also see the [ansible-collection-ibm](https://github.com/IBM-Cloud/ansible-collection-ibm).

Most require an ansible inventory file.

Inventory:

```shell
cat inventory
[hosts]
192.168.0.5 ansible_ssh_user=ubuntu
```


## `bootstrap_python.sh`

Description: This script will install python on ubuntu hosts, needed for other playbooks.

Usage:

```bash
./bootstrap_python.sh <ip>
```

## `first-config.yml`

Description: This playbook will do first-run configuration for IBM Cloud VMs including securing ssh, installing basic packages, etc.

Usage:

```bash
ansible-playbook -i inventory first-config.yml
```

## `ibmcloud-client.yml`

Description: This playbook will install the `ibmcloud` cli tool and several common plugins. User to install with is customizable.

```shell
ansible-playbook -i inventory ibmcloud-client.yml
```

> Note: `ibmcloud` plugins are installed per-user. If you want to install under your user do an override like this:

```shell
ansible-playbook -i inventory ibmcloud-client.yml --extra-vars "ibmcloud_unix_user=ubuntu"
```


### Developer Utilities

Ansible playbooks to install basic developer utilities for working with bluemix: bx, kubectl, docker, cf, etc. This solves the problem of collecting and installing the client utilities which are typically distributed as binaries in tarballs available over https.

| Software | Org | command(s)  | version  |
|--:|---|---|---|
| Bluemix CLI  | IBM  | bx, bluemix  | latest  |
| Kubernetes  | CNCF  | kubectl  | latest  |
| Helm | CNCF  | helm | latest  |
| Cloud Foundry | Cloud Foundry | cf | latest |
| Moby | Moby | docker | latest  |
| Packer | Hashicorp | packer | 1.0.3 |
| Terraform | Hashicorp | terraform | 0.10.0 |


This requires an ansible inventory file.

Inventory:

```shell
cat inventory
[hosts]
192.168.0.5 ansible_ssh_user=ubuntu
```


Usage:

```shell
./run_all.sh
```

or

```shell
ansible-playbook -i inventory k8s-client.yml
ansible-playbook -i inventory bx-client.yml
ansible-playbook -i inventory cf-client.yml
ansible-playbook -i inventory docker.yml
ansible-playbook -i inventory hashicorp.yml
ansible-playbook -i inventory istio.yml
ansible-playbook -i inventory git-repos.yml
```


