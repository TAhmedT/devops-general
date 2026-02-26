resource "local_file" "inventory" {
  filename = "${path.module}/../ansible/inventory/inventory.ini"
  content  = module.kube.inventory
}