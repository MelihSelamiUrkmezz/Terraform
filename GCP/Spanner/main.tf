resource "google_spanner_instance" "spanner" {
  config       = "regional-us-central1"
  display_name = "spanner_instance_from_tf"
  num_nodes    = 1
  labels = {
    "env" = "spanner"
  }
}
resource "google_spanner_database" "database" {
  instance = google_spanner_instance.spanner.name
  name     = "db_from_tf"
  deletion_protection = false
}