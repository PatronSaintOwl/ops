module "digitalocean" {
  source = "./digital-ocean"
  server-count = 3
  token = var.digitalocean-token
}

output "ip" {
  value = module.digitalocean.ip
  description = "The ip address of the previously create instance"
}