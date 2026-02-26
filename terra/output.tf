output "inventory" {
  value = module.kube.inventory
}

output "ipv4_by_name" {
  value = module.kube.name_ip
}