data "google_active_folder" "folder" {
  display_name = upper(var.folder_name)
  parent       = format("organizations/%s", var.organization_id)
}

resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account
  folder_id       = data.google_active_folder.folder.id
}

resource "google_project_service" "cloudresourcemanager" {
  project            = google_project.project.project_id
  service            = "cloudresourcemanager.googleapis.com"
  disable_on_destroy = false
}
