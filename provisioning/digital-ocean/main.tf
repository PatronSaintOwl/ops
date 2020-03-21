provider "digitalocean" {
  token=var.token
}

resource "digitalocean_project" "Ops" {
  name        = "Ops"
  description = "Ops cluster"
  purpose     = "Web Application"
  resources   = digitalocean_droplet.digitalocean-worker.*.urn
}

resource "digitalocean_droplet" "digitalocean-worker" {
  # Obtain your ssh_key id number via your account. See Document https://developers.digitalocean.com/documentation/v2/#list-all-keys
  ssh_keys           = [25815050]         # Key example
  count              = var.server-count
  image              = var.ubuntu
  region             = var.do_lon1
  size               = "s-1vcpu-1gb"
  name               = "digitalocean-worker-${count.index}"
}