terraform {
  required_providers {
    minikube = {
        source = "scott-the-programmer/minikube"
        version = "0.4.2"
    }
  }
}

# required provider
provider "minikube" {
  kubernetes_version = "v1.30.0"
}

# minikube cluster resource
resource "minikube_cluster" "minikube_docker" {
  driver = "docker"
  cluster_name = "lafialink-infrastructure"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}