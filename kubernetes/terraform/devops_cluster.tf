terraform {
  # Версия terraform
  required_version = "0.12.3"
}

provider "google" {
  # Версия провайдера
  version = "3.0.0-beta.1"
  # ID проекта
  project = "premium-state-257009"
  region  = "us-west1-a"
  # Credentials
  credentials = "${file("devops.json")}"
}

resource "google_container_cluster" "primary" {
  name     = "devops-cluster"
  location = "us-west1-a"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "devops-cluster-pool"
  location   = "us-west1-a"
  cluster    = google_container_cluster.primary.name
  node_count = 2

  node_config {
    preemptible  = true
    machine_type = "g1-small"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}