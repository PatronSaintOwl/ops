module "digitalocean" {
  source = "./digital-ocean"

  server-count = 3
  region = "lon1"
  size = "s-2vcpu-4gb"
  name = "digitalocean.worker"

  token = var.digitalocean-token
  ssh-keys = var.digitalocean-ssh-keys
}
