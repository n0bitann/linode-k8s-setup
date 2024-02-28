
terraform {
    required_providers {
        linode = {
        source = "linode/linode"
        version = "2.16.0"
        }
    }
    
}

provider "linode" {
}
    


data "linode_profile" "me" {

}

resource "linode_instance" "control-plane-1" {
    label       = "control-plane-1"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
    authorized_users = [data.linode_profile.me.username]
}

resource "linode_instance" "control-plane-2" {
    label       = "control-plane-2"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
    authorized_users = [data.linode_profile.me.username]
}

resource "linode_instance" "control-plane-3" {
    label       = "control-plane-3"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
    authorized_users = [data.linode_profile.me.username]
}

resource "linode_instance" "worker-node-1" {
    label       = "worker-node-1"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
    authorized_users = [data.linode_profile.me.username]
}
resource "linode_instance" "worker-node-2" {
    label       = "worker-node-2"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
    authorized_users = [data.linode_profile.me.username]
}
resource "linode_instance" "worker-node-3" {
    label       = "worker-node-3"
    region      = var.linode_region
    type        = "g6-standard-2"
    image       = "linode/ubuntu22.04"
    authorized_users = [data.linode_profile.me.username]
}
