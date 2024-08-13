# resource "digitalocean_firewall" "web" {
#   name = "only-80-and-443"

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "80"
#     source_addresses = ["78.63.20.8/0"]
#     # source_addresses = ["0.0.0.0/0"]
#   }

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "443"
#     source_addresses = ["78.63.20.8/0"]
#     # source_addresses = ["0.0.0.0/0"]
#   }

#   droplet_ids = flatten([
#     for node_map in digitalocean_kubernetes_cluster.naujas.node_pool.*.nodes :
#     [for node in node_map : lookup(node, "droplet_id", null)]
#   ])

#   #vpc source
# }

# output "droplet_ids" {
#   value = flatten([
#     for node_map in digitalocean_kubernetes_cluster.naujas.node_pool.*.nodes :
#     [for node in node_map : lookup(node, "droplet_id", null)]
#   ])
# }
