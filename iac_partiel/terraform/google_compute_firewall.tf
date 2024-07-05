resource "google_compute_firewall" "ssh_rule" {
  name    = "access-ssh"
  network = google_compute_network.vpc_network.name
  project = google_project.my_project.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["vm-instance-partiel"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "http_rule" {
  name    = "access-http"
  network = google_compute_network.vpc_network.name
  project = google_project.my_project.project_id

  allow {
    protocol = "tcp"
    ports    = ["8000"]
  }

  target_tags   = ["vm-instance-partiel"]
  source_ranges = ["0.0.0.0/0"]
}

