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
  ssh_keys           = var.ssh-keys
  count              = var.server-count
  image              = var.ubuntu
  region             = var.do_lon1
  size               = var.size-s-2vcpu-4gb
  name               = "digitalocean-worker-${count.index}"
}