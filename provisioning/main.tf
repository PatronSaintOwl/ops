module "digitalocean" {
  source = "./digital-ocean"

  server-count = 3

  token = var.digitalocean-token
  ssh-keys = var.digitalocean-ssh-keys
}

# module "scaleway" {
#   source = "./scaleway"

#   server-count = 2

#   access-key = var.scaleway-access-key
#   access-secret = var.scaleway-access-secret
#   organization-id = var.scaleway-organization-id
# }

output "ip" {
  value = module.digitalocean.ip
  description = "The ip address of the previously create instance"
}