module "kube" {
  source = "./modules/k8s-cluster"

  control_plane_count = var.control_plane_count
  worker_count        = var.worker_count

}
