resource "google_compute_firewall" "allow-ssh" {
  name    = "${var.name}-allow-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "ingress_allow_health_checks" {
  name    = "${var.name}-allow-health-checks"
  network = "${var.name}-allow-ssh"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges  = ["35.191.0.0/16", "130.211.0.0/22"]
  target_tags    = ["allow-health-checks"]
  direction      = "INGRESS"
}