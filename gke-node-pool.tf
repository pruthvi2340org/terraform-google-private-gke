resource "google_container_node_pool" "general" {
  name       = var.name
  cluster    = google_container_cluster.primary.id
  node_count = var.node_count

  management {
    auto_repair  = true
    auto_upgrade = true
  }


  node_config {
    preemptible  = false
    machine_type = var.node_machine_type
    tags = ["allow-health-checks"]
    labels = {
      role = var.name
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}