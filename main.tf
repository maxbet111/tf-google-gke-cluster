# Файл на GitHub: tf-google-gke-cluster/main.tf

resource "google_container_cluster" "primary" {
  name     = "gke-cluster-from-module"
  location = var.GOOGLE_REGION
  project  = var.GOOGLE_PROJECT

  # Ми створюємо мінімальний кластер
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "my-node-pool"
  location   = var.GOOGLE_REGION
  cluster    = google_container_cluster.primary.name
  project    = var.GOOGLE_PROJECT
  node_count = var.GKE_NUM_NODES

  node_config {
    machine_type = "e2-medium"
  }
}
