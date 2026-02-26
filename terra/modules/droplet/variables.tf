variable "name" {
  type = string
  description = "Droplet name"
}

variable "image" {
  type = string
  default = "debian-13-x64"
  description = "OS image"
}

variable "region" {
  type = string
  default = "fra1"
  description = "Droplet region"
}

variable "size" {
  type = string
  default = "s-1vcpu-2gb-amd"
  description = "VM hardware size"
}

variable "ssh_keys" {
  type = list(number)
  default = [41918113]
  description = "SSH key IDs"
}