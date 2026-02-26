resource "local_file" "inventory" {
  filename = "${path.module}/inventory.ini"
  content  = module.kube.inventory
}