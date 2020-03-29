provider "digitalocean" {
  token=var.token
}

resource "digitalocean_project" "Ops" {
  count       = var.server-count == 0 ? 0 : 1
  name        = "Ops"
  description = "Ops cluster"
  purpose     = "Web Application"
  resources   = digitalocean_droplet.digitalocean-worker.*.urn
}

resource "digitalocean_droplet" "digitalocean-worker" {
  ssh_keys           = var.ssh-keys
  count              = var.server-count
  image              = var.os-ubuntu
  region             = var.region
  size               = var.size
  name               = "${var.name}.${count.index}"
}