resource "digitalocean_kubernetes_cluster" "naujas" {
  name    = "naujas"
  region  = var.region
  version = "1.30.2-do.0"

  node_pool {
    name       = "cluster-pool"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = var.min_node_count
    max_nodes  = var.max_node_count
  }

  vpc_uuid = digitalocean_vpc.example.id

}
