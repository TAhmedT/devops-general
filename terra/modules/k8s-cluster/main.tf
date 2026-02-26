module "kube_master" {
  count = var.control_plane_count
  source = "../droplet"

  name = "plane-${count.index}"
  image = var.image
  region = var.region
  size = var.size
  ssh_keys = var.ssh_keys

}


module "kube_workers" {
  count = var.worker_count
  source = "../droplet"

  name = "workers-${count.index}"
  image = var.image
  region = var.region
  size = var.size
  ssh_keys = var.ssh_keys

}