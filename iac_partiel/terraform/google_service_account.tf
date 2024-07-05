resource "google_service_account" "default" {
  account_id   = "my-sa-1"
  display_name = "Mon service account partiel"
  project = google_project.my_project.project_id
}

