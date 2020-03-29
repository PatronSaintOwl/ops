output "ip" {
  value = formatlist(
    "%s : %s",
    module.digitalocean.name,
    module.digitalocean.ip
  )
  description = "Ip addresses of created instances"
}

resource "local_file" "ansible_inventory" {
  filename = "../my_cluster/terraform_workers_ips"
  content = join(" ", formatlist(
    "%s,%s",
    module.digitalocean.name,
    module.digitalocean.ip
  ))
  file_permission = "0666"
  directory_permission = "0777"
}
