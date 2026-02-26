resource "digitalocean_droplet" "droplet" {
  name = var.name
  image = var.image
  region = var.region
  size = var.size
  ssh_keys = var.ssh_keys
}

