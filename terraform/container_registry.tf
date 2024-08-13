# Create a new container registry
resource "digitalocean_container_registry" "worker" {
  name                   = "tester-registry"
  subscription_tier_slug = "basic"
  region                 = var.region
}
