resource "digitalocean_vpc" "example" {
  name     = "example-project-network"
  region   = var.region
  ip_range = "10.114.16.0/20"
  #   default  = true
}
