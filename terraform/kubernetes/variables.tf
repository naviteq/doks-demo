
variable "cluster_version" {
  default = "1.21"
}

variable "workers_count_max" {
  default = 3
}

variable "workers_count_min" {
  default = 2
}

variable "worker_type" {
  default = "s-4vcpu-8gb"
}

variable "cluster_option_slug" {
  default = "1.21.11-do.1"
}
