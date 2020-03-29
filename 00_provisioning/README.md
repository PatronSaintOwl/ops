# Ops

> Provisioning your ops cluster

Before starting using ops, you need... machines.

If you don't have your a datacenter at your service (which I understand !), you can command a bunch of workers on cloud providers here

## Terraform

You will need terraform to be installed.

Terraform is an Hashicorp tool, allowing you to describe infrastructure as code. We will use it to provision and manage your cloud infrastructure

Have a look [here](https://www.terraform.io/)!

## Cloud providers

To connect to your favorite cloud providers, open credentials.tf and fill it with your credentials

You don't need to fill everything, only cloud providers you're using !

**List of currently supported cloud providers**
  * DigitalOcean

## Up and running

1. If it's the first time launching your infrastructure plan, you will have to run `terraform init` to install all needed providers

2. `terraform apply` will show you what terraform is going to do, and accepting this plan will launch your datacenter creation. It's as simple !

3. Ip addresses will be stored in my_cluster/terraform_workers_ips

## Down and saving

If you was simply trying things out, or more in general if you don't need your cloud infrastructure anymore, simply run `terraform destroy` to destroy your datacenter and all its dependencies

## Configuration

You can configure your datacenter in main.tf
 * `server-count` to chose the number of servers of you want to create
 * `region` to change the location to host your servers.
 * `size` to change the capacity (vcpus, gpus, ram, memory, etc) of your servers
 * `name` is pretty straight-forward

Possible values for regions and sizes are listed in cloud-provider/constants.tf

### Contributors

![GitHub Logo](https://github.com/LeChatErrant.png?size=30) &nbsp; [LeChatErrant](https://github.com/LeChatErrant) - creator and maintainer
