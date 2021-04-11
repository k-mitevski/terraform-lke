terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "=1.16.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "=2.1.0"
    }
  }
}

provider "linode" {
}

provider "helm" {
  kubernetes {
    config_path = "kube-config"
  }
}

resource "linode_lke_cluster" "lke_cluster" {
    label       = "learnk8s"
    k8s_version = "1.20"
    region      = "eu-west"

    pool {
        type  = "g6-standard-2"
        count = 3
    }
}

resource "helm_release" "ingress-nginx" {
  depends_on   = [local_file.kubeconfig]
  name       = "ingress"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
}
