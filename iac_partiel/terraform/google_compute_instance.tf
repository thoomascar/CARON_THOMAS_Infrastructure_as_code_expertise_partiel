resource "google_compute_instance" "default" {
  name         = "vm-partiel"
  project = google_project.my_project.project_id
  machine_type = "e2-micro"
  zone         = var.default_zone
  allow_stopping_for_update = true
  tags         = ["vm-instance-partiel"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
      subnetwork = google_compute_subnetwork.test_subnet.self_link

    access_config {
      nat_ip = google_compute_address.static1.address
    }
  }

  metadata = {
    foo = "bar"
    ssh-keys = var.ssh_keys
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
    depends_on = [ google_project_service.project ]
}


