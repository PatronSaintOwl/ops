output "ip" {
  value = module.digitalocean.ip
  description = "Ip addresses of created instances"
}

resource "local_file" "ansible_inventory" {
  filename = "../my_cluster/workers_ips"
  content = join(" ", module.digitalocean.ip)
}
