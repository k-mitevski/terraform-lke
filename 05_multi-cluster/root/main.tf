terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "=1.16.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "=2.1.0"
    }
  }
}

provider "linode" {
}

provider "helm" {
  kubernetes {
    config_path = "kube-config-${var.env_name}"
  }
}

resource "linode_lke_cluster" "lke_cluster" {
    label       = "${var.cluster_name}-${var.env_name}"
    k8s_version = "1.20"
    region      = "eu-west"
    tags        =  [ var.env_name ]

    pool {
        type  = var.instance_type
        count = 3
    }
}

resource "helm_release" "ingress-nginx" {
  depends_on   = [local_file.kubeconfig]
  name       = "ingress"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
}