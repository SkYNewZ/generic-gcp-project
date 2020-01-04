resource "google_project_service" "cloudbuild" {
  count              = var.enable_app_engine && var.vcs != "" ? 1 : 0
  project            = google_project.project.project_id
  service            = "cloudbuild.googleapis.com"
  disable_on_destroy = false
}

# Create an Cloud Build trigger if AppEngine is deployed
resource "google_cloudbuild_trigger" "cloudbuild" {
  count    = var.enable_app_engine && var.vcs != "" ? 1 : 0
  provider = google-beta

  project     = google_project.project.project_id
  name        = "push-master"
  description = "Build on push on master"

  github {
    owner = split("/", var.vcs)[0]
    name  = split("/", var.vcs)[1]
    push {
      branch = "master"
    }
  }

  filename   = "cloudbuild.yaml"
  depends_on = [google_project_service.cloudbuild]
}
