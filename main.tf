resource "google_project" "main" {
  billing_account     = var.billing_account
  folder_id           = var.folder_id
  project_id          = var.project_id
  name                = var.project_name
  auto_create_network = var.auto_create_network
  labels              = var.labels
}

resource "time_sleep" "wait_for_project" {
  create_duration = "30s"
  depends_on      = [google_project.main]
}
