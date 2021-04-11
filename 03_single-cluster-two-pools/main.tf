terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "=1.16.0"
    }
  }
}

provider "linode" {
}

resource "linode_lke_cluster" "lke_cluster" {
    label       = "learnk8s"
    k8s_version = "1.20"
    region      = "eu-west"

    pool {
        type  = "g6-standard-2"
        count = 3
    }
    pool {
        type  = "g6-dedicated-4"
        count = 3
    }
}
