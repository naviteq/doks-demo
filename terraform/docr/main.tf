

resource "digitalocean_container_registry" "dokr-demo" {
  name                   = "dokr-demo"
  subscription_tier_slug = "starter"
}
