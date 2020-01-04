resource "google_project_service" "serviceusage" {
  project            = google_project.project.project_id
  service            = "serviceusage.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "iam" {
  project            = google_project.project.project_id
  service            = "iam.googleapis.com"
  disable_on_destroy = false
}
