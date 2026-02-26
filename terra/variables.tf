variable "control_plane_count" {
  type    = number
  description = "Control plane nodes"
  default = 3
}

variable "worker_count" {
  type    = number
  description = "Workers nodes"
  default = 3
}