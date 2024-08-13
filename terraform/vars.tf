variable "digitalocean_token" {
  type      = string
  sensitive = true
}

variable "min_node_count" {
  type    = number
  default = 1
}
variable "max_node_count" {
  type    = number
  default = 3
}

variable "region" {
  type    = string
  default = "fra1"
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.40.0"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}
