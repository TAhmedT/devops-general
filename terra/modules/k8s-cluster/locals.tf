locals {
  master_names = [for m in module.kube_master  : m.droplet_name]
  worker_names = [for w in module.kube_workers : w.droplet_name]
  all_names    = concat(local.master_names, local.worker_names)

  masters_map = zipmap(
    [for m in module.kube_master : m.droplet_name],
    [for m in module.kube_master : m.droplet_ip]
  )
  workers_map = zipmap(
    [for w in module.kube_workers : w.droplet_name],
    [for w in module.kube_workers : w.droplet_ip]
  )
  name_ip     = merge(local.masters_map, local.workers_map)

  inventory = templatefile("${path.module}/templates/inventory.tpl", {
    all_names           = local.all_names
    control_plane_names = local.master_names
    worker_names        = local.worker_names
    name_ip             = local.name_ip
  })
}