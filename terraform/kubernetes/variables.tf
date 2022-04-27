
variable "cluster_version" {
  default = "1.21"
}

variable "workers_count_max" {
  default = 3
}

variable "workers_count_min" {
  default = 1
}

variable "worker_size" {
  default = "s-1vcpu-2gb"
}

variable "cluster_option_slug" {
  default = "1.21.11-do.1"
}
