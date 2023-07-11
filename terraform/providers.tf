terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.2.8"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.26.3"
}

provider "kubernetes" {
  host = minikube_cluster.docker.host

  client_certificate     = minikube_cluster.docker.client_certificate
  client_key             = minikube_cluster.docker.client_key
  cluster_ca_certificate = minikube_cluster.docker.cluster_ca_certificate
}
