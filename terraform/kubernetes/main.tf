#terraform {
#  required_providers {
#    digitalocean = {
#      source  = "digitalocean/digitalocean"
#      version = ">= 2.19.0"
#    }
#  }
#}

resource "random_id" "cluster_name" {
  byte_length = 5
}

locals {
  cluster_name = "tf-k8s-${random_id.cluster_name.hex}"
}

module "doks-cluster" {
  source              = "./doks-cluster"
  cluster_name        = local.cluster_name
  cluster_region      = "nyc3"
  cluster_version     = var.cluster_version
  cluster_option_slug = var.cluster_option_slug

  workers_count_max   = var.workers_count_max
  workers_count_min   = var.workers_count_min
  worker_type         = var.worker_type
}
