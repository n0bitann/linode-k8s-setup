
terraform {
    required_providers {
        linode = {
        source = "linode/linode"
        version = "3.0.0"
        }
    }
    
}

provider "linode" {
}
    




resource "linode_instance" "control-plane-1" {
    label       = "control-plane-1"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
}

resource "linode_instance" "control-plane-2" {
    label       = "control-plane-2"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
}

resource "linode_instance" "control-plane-3" {
    label       = "control-plane-3"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
}

resource "linode_networking_v4" "network" {
    label = "kube-network"
    region = var.linode_region

    ip_range = "192.168.0.0/24"

    linodes = [
        linode_instance.control-plane-1.id,
        linode_instance.control-plane-2.id,
        linode_instance.control-plane-3.id,
    ]
}
