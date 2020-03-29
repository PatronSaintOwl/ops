output "name" {
  value = digitalocean_droplet.digitalocean-worker.*.name
  description = "The name of the previously create instance"
}

output "ip" {
  value = digitalocean_droplet.digitalocean-worker.*.ipv4_address
  description = "Ip addresses of created instances"
}
