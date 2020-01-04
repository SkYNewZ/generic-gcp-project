resource "google_project_service" "appengine" {
  count              = var.enable_app_engine ? 1 : 0
  project            = google_project.project.project_id
  service            = "appengine.googleapis.com"
  disable_on_destroy = false
}

# Deploy AppEngine
resource "google_app_engine_application" "app" {
  count       = var.enable_app_engine ? 1 : 0
  project     = google_project.project.project_id
  location_id = "europe-west"
  depends_on  = [google_project_service.appengine]
}

# Grand needed roles to Cloud Build to deploy on GAE
resource "google_project_iam_member" "appengine_admin" {
  count      = var.enable_app_engine && var.vcs != "" ? 1 : 0
  project    = google_project.project.project_id
  role       = "roles/appengine.appAdmin"
  member     = format("serviceAccount:%s@cloudbuild.gserviceaccount.com", google_project.project.number)
  depends_on = [google_project_service.cloudbuild]
}

resource "google_project_iam_member" "appengine_deployer" {
  count      = var.enable_app_engine && var.vcs != "" ? 1 : 0
  project    = google_project.project.project_id
  role       = "roles/appengine.deployer"
  member     = format("serviceAccount:%s@cloudbuild.gserviceaccount.com", google_project.project.number)
  depends_on = [google_project_service.cloudbuild]
}
