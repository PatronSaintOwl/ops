output "ip" {
  value = "${digitalocean_droplet.digitalocean-worker.*.ipv4_address}"
  description = "The ip address of the previously create instance"
}