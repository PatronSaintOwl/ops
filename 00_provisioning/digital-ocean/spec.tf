variable "server-count" {
  description = "Number of digital ocean servers to provision"
  type        = number
}

variable "ssh-keys" {
  description = "SSH keys to add to your servers"
  type        = list(number)
}

variable "token" {
  description = "Digital Ocean token. You can refer to https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/"
  type        = string
}
