module "kube" {
  source = "./modules/k8s-cluster"

  control_plane_count = 1
  worker_count        = 1

}