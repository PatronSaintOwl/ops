terraform {
  experiments = [variable_validation]
}

variable "server-count" {
  description = "Number of digital ocean servers to provision"
  type        = number
}

variable "name" {
  description = "Name prefix of your instance"
  type        = string

  validation {
    condition     = can(regex("^[^-]+$", var.name))
    error_message = "The digitalocean instance name cannot contain any '-'."
  }
}

variable "size" {
  description = "Size of your instance. Available sizes are found in constants.tf"
  type        = string
}

variable "region" {
  description = "Datacenter location to use for your instance. Available datacenters are found in constants.tf"
  type        = string
}

variable "ssh-keys" {
  description = "SSH keys to add to your servers"
  type        = list(number)
}

variable "token" {
  description = "Digital Ocean token. You can refer to https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/"
  type        = string
}
