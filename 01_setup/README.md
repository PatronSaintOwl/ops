# Ops

> Setting up your ops cluster

You have machines, but now... You need Kubernetes !

You can setup an highly available - production ready - healthy kubernetes cluster on all your machine here

## Kubespray and Ansible

We will use Kubespray and Ansible for this part

Kubespray is a collection a [Ansible](https://www.ansible.com/) playbooks, used to automate the setup of a production ready Kubernetes cluster

Have a look on the Kubespray project [here](https://github.com/kubernetes-sigs/kubespray)!

Kubespray is perfect to setup a cluster from bare-metal, more likely to works anywhere, and it automates a tremendous amount of annoying work for you to provide an
 * Highly Available
 * Production ready
 * Healthy and compliant with Kubernetes good practices

Kubernetes cluster, and is supported by Kubernetes itself (have a look [here](https://kubernetes.io/docs/setup/production-environment/tools/kubespray/) !)

If it does all the works, does it good, and is well maintained, why not picking it up ?

## Step 1 - Inventory

Before setting your cluster up, you need to create your ansible inventory

You have two way of providing servers :

> Cloud providers

Use [00_provisioning](https://github.com/LeChatErrant/ops/tree/master/00_provisioning)

It will fill [my_cluster/terraform_workers_ips](https://github.com/LeChatErrant/ops/tree/master/my_cluster/terraform_workers_ips)

> Custom servers

Already have your own servers running ?

Add them to [my_cluster/custom_workers_ips](https://github.com/LeChatErrant/ops/tree/master/my_cluster/custom_workers_ips) with the following format :
```
my_worker_1,0.0.0.0 my_worker_2,0.0.0.1 my_worker_3,0.0.0.2
```

You can use both cloud providers and custom servers at the same time

Once you're ready, simply run `./create_inventory.sh` to created your inventory in my_cluster/hosts.yaml (note you will need python3 to be installed)

## Step 2 - Configuration

Once you have your inventory, review it to check which nodes are going to be Kubernetes masters, where will be deployed your etcd nodes, etc

You can configure the Kubernetes cluster to be created with
 * my_cluster/sample/group_vars/all/all.yml
 * my_cluster/sample/group_vars/k8s-cluster/k8s-cluster.yml

But by default, everything is nicely configured, so i don't recommand to change those configurations if you don't know what you're doing

## Step 3 - Installation

Your inventory is ready ? Let's finish this ! Run `./setup.sh`

It will install requirements (note you will need pip to be installed, and sudo privilege) and launch kubespray

Note that it may take time (~10min) to finish to setup the whole cluster. It's also a good things to have already connected to your servers with ssh, to have their fingerprints listed in your know_hosts

Once the setup is finished, the kubeconfig will be available in my_cluster/kubeconfig, and you can begin to play with your cluster with `kubectl`

### Contributors

![GitHub Logo](https://github.com/LeChatErrant.png?size=30) &nbsp; [LeChatErrant](https://github.com/LeChatErrant) - creator and maintainer
