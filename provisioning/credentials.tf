variable "digitalocean-token" {
  description = "Digital Ocean token. Refer to https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/"
  type        = string
  default     = "your token here"
}

variable "digitalocean-ssh-keys" {
  description = "SSH keys to add to your servers. To get your keys ids, refer to https://developers.digitalocean.com/documentation/v2/#list-all-keys"
  type        = list(number)
  default     = []
}

variable "scaleway-access-key" {
  description = "Scaleway access key. Refer to https://console.scaleway.com/account/credentials"
  type        = string
  default     = "you access key here"
}

variable "scaleway-access-secret" {
  description = "Scaleway access secret. Refer to https://console.scaleway.com/account/credentials"
  type        = string
  default     = "your access secret here"
}

variable "scaleway-organization-id" {
  description = "Scaleway organization id. Refer to https://console.scaleway.com/account/credentials"
  type        = string
  default     = "your organization id here"
}
