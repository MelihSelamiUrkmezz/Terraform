resource "google_cloud_run_service" "GCRS" {
  name = "cloudrun-srv"
  location = var.region

template {
  spec {
    containers {
      image="melihselamiurkmez/fastapi:v2"
      ports {
        container_port = 5000
      }
    }
  }
}
traffic {
  revision_name = "cloudrun-srv-00001-q28"
  percent = 50
}
traffic {
  revision_name = "cloudrun-srv-00002-4gb"
  percent = 50
}
}

resource "google_cloud_run_service_iam_policy" "policy" {
  location = google_cloud_run_service.GCRS.location
  project = google_cloud_run_service.GCRS.project
  service = google_cloud_run_service.GCRS.name
  policy_data = data.google_iam_policy.iam-policy.policy_data
}
data "google_iam_policy" "iam-policy" {
  binding {
    role = "roles/run.invoker"
    members = ["allUsers",]
  }
}