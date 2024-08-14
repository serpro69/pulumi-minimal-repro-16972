module "project_services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 15.0"

  project_id                  = var.project_id
  activate_apis               = var.services
  disable_services_on_destroy = false

  depends_on = [
    google_project.main,
    time_sleep.wait_for_project,
  ]

  providers = {
    google = google
  }
}

resource "time_sleep" "wait_for_services" {
  create_duration = "30s"
  depends_on      = [module.project_services]
}

data "google_project_service" "main" {
  for_each = toset(var.services)
  project  = var.project_id
  service  = each.value
  depends_on = [
    module.project_services,
    time_sleep.wait_for_services
  ]
}
