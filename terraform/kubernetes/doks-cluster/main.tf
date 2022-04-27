terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.4.0"
    }
  }
}

provider "digitalocean" {
  # Provider is configured using environment variables:
  # DIGITALOCEAN_TOKEN, DIGITALOCEAN_ACCESS_TOKEN
}

data "digitalocean_kubernetes_versions" "current" {
  version_prefix = var.cluster_version
}

resource "digitalocean_kubernetes_cluster" "primary" {
  name         = var.cluster_name
  region       = var.cluster_region
  version      = var.cluster_option_slug
  auto_upgrade = true

  node_pool {
    name       = "autoscale-workers-pool"
    auto_scale = true
    size       = var.worker_size
    min_nodes  = var.workers_count_min
    max_nodes  = var.workers_count_max
  }
}
