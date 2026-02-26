output "droplet_name" {
  value = digitalocean_droplet.droplet.name
}

output "droplet_ip" {
  value = digitalocean_droplet.droplet.ipv4_address
}

output "name_ip" {
  value = {
    (digitalocean_droplet.droplet.name) = digitalocean_droplet.droplet.ipv4_address
  }
}