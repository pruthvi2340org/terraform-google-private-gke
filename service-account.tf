resource "google_service_account" "kubernetes" {
  account_id = "kubernetes"
}

resource "google_project_iam_binding" "artifactregistry_role" {
  project = var.project_id
  role    = "roles/artifactregistry.serviceAgent"

  members = [
    "serviceAccount:${google_service_account.kubernetes.email}",
  ]
}